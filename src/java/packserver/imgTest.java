/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packserver;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ramkr
 */
@MultipartConfig
public class imgTest extends HttpServlet {
     private static final String UPLOAD_DIR = "dyImages";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String applicationPath = request.getServletContext().getRealPath("");
        // Construct the path of the directory to save uploaded files
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        // Create the directory if it doesn't exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        // Get the file part from the request
        Part filePart = request.getPart("file");
        // Get the file name
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        // Write the file to the target location
        filePart.write(uploadPath + File.separator + fileName);

        // Notify the user that the upload was successful
//        out.print("The file was successfully uploaded to " + uploadPath);
out.println("The file was successfully uploaded to " + uploadPath);
            /* TODO output your page here. You may use following sample code. */
//         Part part= request.getPart("file");
//        String fileName=part.getSubmittedFileName();
//        String path=getServletContext().getRealPath("/"+"dyImages"+File.separator+fileName);
//        out.println(path);
//        InputStream is= part.getInputStream();
//        boolean succ= fileUpload(is,path);
//        if(succ){
//            out.println("Upload successfull"+ path);
//        }
//        else{
//            out.println("not Uploaded");
//        }
        }
    }

    public boolean fileUpload(InputStream is, String path){
        boolean test=false;
        try{
            out.println(path);
            byte[] byt=new byte[is.available()];
            is.read();
            FileOutputStream fops=new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            test=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
  

}
