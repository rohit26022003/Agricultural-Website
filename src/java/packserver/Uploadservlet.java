/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packserver;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//@WebServlet("/UploadServlet")
@MultipartConfig
public class Uploadservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = "dyImages"; // Change this to your preferred directory

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Part filePart = request.getPart("fileToUpload");
    String fileName = filePart.getSubmittedFileName();
    String uploadPath = "E:\\Neatbeans_project\\AgriEvolution\\web\\dyImages"; // Replace with your desired path

    // Create the upload directory if it doesn't exist
    File uploadDir = new File(uploadPath);
    if (!uploadDir.exists()) {
        uploadDir.mkdir();
    }

    // Write the file to the upload directory
    String filePath = uploadPath + File.separator + fileName;
    filePart.write(filePath);

    // Redirect or display a success message
    response.sendRedirect("success.jsp");
}
}
