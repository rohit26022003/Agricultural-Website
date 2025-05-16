<%-- 
    Document   : Admin
    Created on : 22 Nov, 2024, 9:36:55 AM
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

      <main>
        <h1>Dashboard</h1>

        <div class="date">
          <input type="date" />
        </div>

        

        <div class="recent-orders">
             <%!
            String oracleQuery;
          OraclePreparedStatement ost;
          OracleResultSet ors = null;
            %>
          <h2>Recent Orders</h2>
          <table id="recent-orders--table">
            <thead>
              <tr>
                <th>Product ID</th>
                <th>Product NAME</th>
                <th>Payment</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <tbody id="tbd">
                <%
                   oracleQuery="SELECT * FROM ORDERS";
                   ost=Connect.conect(oracleQuery);
                   ors = (OracleResultSet) ost.executeQuery();
                   while(ors.next()){
                       int id = ors.getInt("PRODUCT_ID");
                       String name = ors.getString("PRODUCTNAME"); 
                       String pm = ors.getString("PAYMENT");
                       String st = ors.getString("STATUS");
                %> 
                          <tr>
                           <td><%= id %></td>
                          <td><%= name %></td>
                          <td><%= pm %></td>
                          <td><%= st %></td>
                          </tr>
                <%
                }
                %>
            </tbody>
            <script>console.log()</script>
            <!-- Add tbody here | JS insertion -->
          </table>
        </div>
      </main>
                <%
                   ost.close();
             
                %>

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
    <script src="../Scripts/Adminpanel.js"></script>
  </body>
</html>
