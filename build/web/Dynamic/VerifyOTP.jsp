<%-- 
    Document   : VerifyOTP
    Created on : 17 Nov, 2024, 11:21:18 AM
    Author     : ramkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OTP Verification Page after login</title>
        <script>
            function funClose()
            {
                if(window.parent) if(confirm("Closing window......") === true)  window.parent.window.close();    
                else if(confirm("Closing window......") === true) window.close();   
              }
         </script>     
    </head>
    <body style="background-color: antiquewhite">
         <%!
            String vname, votp, vemail;
            %>
        <%
            HttpSession sess = request.getSession(false);
            try
{
            if(sess!=null) 
            {
                vname = sess.getAttribute("fname").toString();
                votp = sess.getAttribute("otp").toString();
                vemail = sess.getAttribute("email").toString();
            }
}
catch(Exception ex)
{
                %>
                <script>
                    alert("Session was not created!!!");
                    alert("Redirecting for logging==>>");
                    location.href="http://localhost:8080/AgriEvolution/Html/Login.html";
                </script>
                <%  
}
            if(request.getParameter("bVerify")!=null)
            {
                if(request.getParameter("tbOTP").equals(votp))
                {
                %>
                <script>
                    alert("OTP verified successfully!!!");
                    alert("Redirecting to home page !!!");
                    
                    location.href="http://localhost:8080/AgriEvolution/Html/Home.jsp";
                </script>
                <%
                }
                else
                {
                       %> 
                       <h3 style="color:red">Wrong OTP. Please try again!!!</h3>                 
                        <%
                }
            }
            else
            {
                   %>
                   
                   <h3 style="color: blueviolet">
                   Welcome <%=vname%> . 
                   Your designated email is : <%=vemail%>. Check your inbox .
                   Please complete the login process.
                   <a href="http://localhost:8080/AgriEvolution/SessLogout">Sign out</a>
                   <h3>
                    <%
            }   
            %> 
        <h2>THIS IS OTP VERIFICATION PAGE BEFORE LOGGING IN COMPLETELY!</h2>
        <form name="frmOTP" method="POST" action="http://localhost:8080/AgriEvolution/Html/VerifyOTP.jsp">
        <div>
            <table border="1">
                <thead>
                    <tr><th colspan="2">OTP VERIFICATION FORM</th></tr>
                </thead>
                <tbody>
                    <tr>
                        <td>ENTER OTP</td>
                        <td><input type="number" size="4" name="tbOTP" required/></td></tr>    
                    <tr>
                        <td>
                            <button type="submit" name="bVerify">Verify</button>
                        </td>
                        <td>
                            <button type="reset" name="bReset">Reset</button>
                            <button type="button" name="bClose" onclick="funClose();">Close</button>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr><th colspan="2">&copy;Techno India Technologies ; Limited &reg;</th></tr>
                </tfoot>
            </table>
        </div>
            </form>
    </body>
</html>
