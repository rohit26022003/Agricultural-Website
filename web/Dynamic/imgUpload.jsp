<%-- 
    Document   : imgUpload
    Created on : 29 Nov, 2024, 11:18:46 AM
    Author     : ramkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Upload Image</title>
</head>
<body>
   <form action="http://localhost:8080/AgriEvolution/Uploadservlet" method="post" enctype="multipart/form-data">
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload Image">
</form>
</body>
</html>

