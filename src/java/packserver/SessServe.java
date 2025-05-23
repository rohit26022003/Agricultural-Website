package packserver;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;

public class SessServe extends HttpServlet {
         OracleConnection oconn;
        OraclePreparedStatement ost;
        OracleResultSet ors = null;
        String vemail, vpass, vname;
        String vto, vfrom, vcc, vbcc, vsubject, vbody;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SessServe</title>");            
            out.println("</head>");
            out.println("<body>");
              
            vemail = request.getParameter("lmail");
            vpass = request.getParameter("lpass");
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@Ramkrishna:1521:orcl","SMIT","LUCK");
            ost =(OraclePreparedStatement) oconn.prepareStatement("SELECT * FROM USERS where USER_MAIL=? and USER_PASS=?");
            ost.setString(1, vemail);
            ost.setString(2, vpass);
            ors = (OracleResultSet) ost.executeQuery();
            if(ors.next()) 
            {
                vname = ors.getString("USER_NAME");
                HttpSession sess = request.getSession(true);
                sess.setAttribute("fname",vname);
                // PLS NOTE THAT U CAN IGNORE MANY LINES BELOW IF U R NOT DEALING WITH OTP OR MAIL SENDING
                vto=vemail;
                vsubject="New OTP for Logging in !!!";
                vbody="Enter the OTP for signing in.";
                final String username ="rrasdsspdd@gmail.com";
                final String password = "tzjotaciijrlebxi";
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

            Session session = Session.getInstance(props,
              new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                    }
              });

            try {

                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(username));
                    message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(vto));
                    message.setSubject(vsubject);
                    Random random = new Random();
                     int x = 0;
                     while(x < 1000)
                     {
                         x = random.nextInt(9999);
                     }
                     vbody += "\nYour new OTP is " + x;
                     sess.setAttribute("otp",x);
                     sess.setAttribute("email",vemail);
                     
                    message.setText(vbody);
                    Transport.send(message);
                    response.sendRedirect("http://localhost:8080/AgriEvolution/Html/VerifyOTP.jsp");
                    
            } catch (MessagingException e) {

                     out.println("<h2 style='color:red'>"+e.getMessage()+"</h2>");
            }
                
            }
            else 
            {
                response.sendRedirect("http://localhost:8080/AgriEvolution/Html/WrongPass.html");
            }
            ost.close();
            oconn.close();
            out.println("</body>");
            out.println("</html>");
        }    catch (SQLException ex) {
                 Logger.getLogger(SessServe.class.getName()).log(Level.SEVERE, null, ex);
             }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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