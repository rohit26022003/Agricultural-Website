/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packserver;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;

public class Register extends HttpServlet {
    
     String  vUSER,vMAIL, vPASS,vSQUES,vANS,oracleQuery;
     int vid=0;
     
    // STEP 1: DECLARING ORACLE OBJECTS
    OraclePreparedStatement ops;



    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
             out.println("<title>Servlet WorkRegister</title>");
            out.println("<body>");
            out.println("<h1>Servlet Register</h1>");
            vid=vid+1;
            vUSER= request.getParameter("uname");
            vMAIL = request.getParameter("umail");
            vPASS= request.getParameter("upass");
            vPASS= request.getParameter("upass");
            vSQUES= request.getParameter("ques");
            vANS= request.getParameter("ans");
            out.println("<h1>Printing the HTML Form values in this servlet....</h1>");
            out.println("<h2>User Name : " + vUSER+ "</h2>");
            out.println("<h2>User Email : " + vMAIL+ "</h2>");
            out.println("<h2>User Password : " + vPASS + "</h2>");
            out.println("<h2>User Password : " + vSQUES + "</h2>");
            out.println("<h2>User Password : " + vANS + "</h2>");
              oracleQuery="INSERT INTO STUDENTS(USER_ID,USER_NAME,USER_MAIL,USER_PASS,SQUES,SANS) values(?,?,?,?,?,?)";
              ops=Connect.conect(oracleQuery);
                //STEP 6: FILLING UP THE BLANK QUERY PARAMETERS (?)
                ops.setString(1, String.valueOf(vid));
                ops.setString(2, vUSER);
                ops.setString(3, vMAIL);
                ops.setString(4, vPASS);
                ops.setString(5, vSQUES);
                ops.setString(6, vANS);
                
                // STEP 7: EXECUTING THE QUERY
                int x = ops.executeUpdate();
                
                if(x > 0)
                {
                    response.sendRedirect("http://localhost:8080/AgriEvolution/Html/Login.html");
                }
                else
                {
                    out.println("<h2 style='color:brown'> Record could not be added...");
                }
                
                //STEP 8: CLOSING THE ORACLE OBJECTS
                ops.close();
                 out.println("</body>");
            out.println("</html>");
                
            } catch (SQLException ex) {
             Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
             PrintWriter out = response.getWriter();
             out.println("<h2 style='color:red'> Error is : " + ex.toString() + "</h2>");

         }
            

           
        }
    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
