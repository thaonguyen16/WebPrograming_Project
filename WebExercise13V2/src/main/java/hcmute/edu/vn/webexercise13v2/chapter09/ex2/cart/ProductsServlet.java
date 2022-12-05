package hcmute.edu.vn.webexercise13v2.chapter09.ex2.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.util.ArrayList;

import hcmute.edu.vn.webexercise13v2.chapter09.ex2.business.Product;
import hcmute.edu.vn.webexercise13v2.chapter09.ex2.data.ProductIO;


@WebServlet(name = "9_Ex2Servlet_product", value = "/Chapter09/ch09_ex2_cart/product")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/WEB-INF/chapter09/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);
        session.removeAttribute("cart");

        String url = "/views/chapter09/ex2/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }
}
