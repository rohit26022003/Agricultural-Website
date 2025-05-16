package packserver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/processPayment")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String cardNumber = request.getParameter("cardNumber");
        String expiryDate = request.getParameter("expiryDate");
        String cvv = request.getParameter("cvv");
        String amount = request.getParameter("amount");
        
        // Simple validation (in real applications, integrate with a payment processor)
        if (cardNumber.length() == 16 && cvv.length() == 3) {
            // Payment processed successfully
            request.setAttribute("amount", amount);
            request.getRequestDispatcher("paymentSuccess.jsp").forward(request, response);
        } else {
            // Payment failed
            request.getRequestDispatcher("paymentFailure.jsp").forward(request, response);
        }
    }
}
