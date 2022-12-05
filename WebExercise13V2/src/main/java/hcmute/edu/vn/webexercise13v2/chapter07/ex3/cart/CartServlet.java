package hcmute.edu.vn.webexercise13v2.chapter07.ex3.cart;


import hcmute.edu.vn.webexercise13v2.chapter07.ex3.business.Product;
import hcmute.edu.vn.webexercise13v2.chapter07.ex3.business.Cart;
import hcmute.edu.vn.webexercise13v2.chapter07.ex3.business.LineItem;
import hcmute.edu.vn.webexercise13v2.chapter07.ex3.data.ProductIO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "7_Ex3Servlet", value = "/Chapter07/Ex3/ch07_ex3_cart")
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/views/chapter07/ex3/index.jsp";
        ServletContext sc = getServletContext();
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("shop")) {
            url = "/views/chapter07/ex3/index.jsp";    // the "index" page
        } 
        else if (action.equals("cart")) {
            String productCode = request.getParameter("productCode");
            String quantityString = request.getParameter("quantity");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
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

            String path = sc.getRealPath("/WEB-INF/chapter07/ex3/products.txt");
            Product product = ProductIO.getProduct(productCode, path);

            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            lineItem.setQuantity(quantity);
            if (quantity > 0) {
                cart.addItem(lineItem);
            } else if (quantity == 0) {
                cart.removeItem(lineItem);
            }

            session.setAttribute("cart", cart);
            url = "/views/chapter07/ex3/cart.jsp";
        }
        else if (action.equals("checkout")) {
            url = "/views/chapter07/ex3/checkout.jsp";
        }

        request.getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }    
}