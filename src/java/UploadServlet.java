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

@WebServlet("/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = "dyImages"; // Change this to your preferred directory

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the absolute path of the web application
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
        response.getWriter().print("The file was successfully uploaded to " + uploadPath);
    }
}
