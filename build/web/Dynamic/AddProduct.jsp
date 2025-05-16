<%-- 
    Document   : AddProduct
    Created on : 28 Nov, 2024, 9:56:56 AM
    Author     : ramkr
--%>
<%@page import="packserver.Connect"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard</title>

    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../Styles/Adminpanel.css"/>
    <link rel="stylesheet" href="../Styles/addProduct.css">
  </head>
  <body>
    <div class="container">
      <aside>
        <div class="top">
          <div class="logo">
            <img src="./images/logo.png" alt="Logo" />
            <h2>EGA<span class="danger">TOR</span></h2>
          </div>
          <div class="close" id="close-btn">
            <span class="material-icons-sharp"> close </span>
          </div>
        </div>

        <div class="sidebar">
            <a href="Admin.jsp" class="active" >
            <span class="material-icons-sharp"> dashboard </span>
            <h3>Dashboard</h3>
          </a>
          <a href="Customer.jsp" >
            <span class="material-icons-sharp"> person_outline </span>
            <h3>Customers</h3>
          </a>
          <a href="Orders.jsp" >
            <span class="material-icons-sharp"> receipt_long </span>
            <h3>Orders</h3>
          </a>
          <a href="Messages.jsp">
            <span class="material-icons-sharp"> mail_outline </span>
            <h3>Messages</h3>
            <span class="message-count">26</span>
          </a>
          <a href="Products.jsp">
            <span class="material-icons-sharp"> inventory </span>
            <h3>Products</h3>
          </a>
          <a href="AddProduct.jsp">
            <span class="material-icons-sharp"> add </span>
            <h3>Add Product</h3>
          </a>
          <a href="#">
            <span class="material-icons-sharp"> logout </span>
            <h3>Logout</h3>
          </a>
        </div>
      </aside>
        <%!
            String vemail, vques, vans,oracleQuery;
            int pid,pquant;
          OraclePreparedStatement ost;
          OracleResultSet ors = null;
            %>
      <main>
        <h1>Add Products</h1>

        <div class="date">
          <input type="date" />
        </div>
        <div class="product-container">
            <h1>Add New Product</h1>
            <form id="productForm" method="post" action="http://localhost:8080/AgriEvolution/Dynamic/AddProduct.jsp">
              <label for="productImage">Product Image:</label>
              <input type="file" id="productImage" accept="image/*" required>
              <img id="previewImage" src="#" alt="Image Preview" style="display: none;">
        
              <label for="productName">Product Name:</label>
              <input type="text" id="productName" placeholder="Enter Product Name" required>
        
              <label for="productQuantity">Quantity:</label>
              <input type="number" id="productQuantity" placeholder="Enter Quantity" min="1" required>
              
              <label for="productPrice">Product Price:</label>
              <input type="number" id="productPrice" placeholder="Enter Product Price" min="1" required>
        
              <label for="productDetails">Product Details:</label>
              <textarea id="productDetails" placeholder="Enter Product Details" rows="4" required></textarea>
        
              <button type="submit">Add Product</button>
            </form>
            <div id="result"></div>
        </div>
      </main>
                

      <div class="right">
        <div class="top">
          <button id="menu-btn">
            <span class="material-icons-sharp"> menu </span>
          </button>
          <div class="theme-toggler">
            <span class="material-icons-sharp active"> light_mode </span>
            <span class="material-icons-sharp"> dark_mode </span>
          </div>
          <div class="profile">
            <div class="info">
              <p>Hey, <b>Bruno</b></p>
              <small class="text-muted">Admin</small>
            </div>
            <div class="profile-photo">
              <img src="./images/profile-1.jpg" alt="Profile Picture" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
        document.getElementById('productImage').addEventListener('change', function(event) {
          const file = event.target.files[0];
          if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
              const previewImage = document.getElementById('previewImage');
              previewImage.src = e.target.result;
              previewImage.style.display = 'block';
            };
            reader.readAsDataURL(file);
          }
        });
      
        document.getElementById('productForm').addEventListener('submit', function(event) {
          event.preventDefault();
      
          const name = document.getElementById('productName').value;
          const quantity = document.getElementById('productQuantity').value;
          const details = document.getElementById('productDetails').value;
      
         // Display confirmation in the result div
          const resultDiv = document.getElementById('result');
          resultDiv.innerHTML = `
            <h2>Product Added</h2>
            <p><strong>Name:</strong> ${name}</p>
            <p><strong>Quantity:</strong> ${quantity}</p>
            <p><strong>Details:</strong> ${details}</p>
          `;
      
         // Reset the form and hide the preview image
          document.getElementById('productForm').reset();
          document.getElementById('previewImage').style.display = 'none';
      
         // Show an alert message
          alert("Product details have been successfully submitted!");
        });
      </script>
    <script src="../Scripts/Adminpanel.js"></script>
  </body>
</html>

