package hcmute.edu.vn.webexercise13v2.chapter10.ex2.cart;

import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.Cart;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.LineItem;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.Product;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.data.ProductIO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "10_Ex1Servlet_cart" , value = "/Chapter10/Ex2/ch10_ex2_cart/cart")
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        ServletContext sc = getServletContext();
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/views/chapter10/ex2/index.jsp";
        switch (action) {
            case "shop":
                url = "/views/chapter10/ex2/index.jsp";    // the "index" page

                break;
            case "cart":
                String productCode = request.getParameter("productCode");
                String quantityString = request.getParameter("quantity");

                HttpSession session = request.getSession();
                Cart cart = (Cart) session.getAttribute("cart1");
                if (cart == null) {
                    cart = new Cart();
                }

                //if the user enters a negative or invalid quantity,
                //the quantity is automatically reset to 1.
                int quantity;
                try {
                    quantity = Integer.parseInt(quantityString);
                    if (quantity < 0) {
                        quantity = 1;
                    }
                } catch (NumberFormatException nfe) {
                    quantity = 1;
                }

                String path = sc.getRealPath("/WEB-INF/chapter10/ex2/products.txt");
                Product product = ProductIO.getProduct(productCode, path);

                LineItem lineItem = new LineItem();
                lineItem.setProduct(product);
                lineItem.setQuantity(quantity);
                if (quantity > 0) {
                    cart.addItem(lineItem);
                } else {
                    cart.removeItem(lineItem);
                }

                session.setAttribute("cart1", cart);
                url = "/views/chapter10/ex2/cart.jsp";
                break;
            case "checkout":
                url = "/views/chapter10/ex2/checkout.jsp";
                break;
        }

        sc.getRequestDispatcher(url)
                .forward(request, response);
    }
}