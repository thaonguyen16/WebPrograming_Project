package hcmute.edu.vn.webexercise13v2.chapter10.ex2.cart;

import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.Product;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.data.ProductIO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.ArrayList;

@WebServlet(name = "10_Ex1Servlet_product" , value = "/Chapter10/Ex2/ch10_ex2_cart/product")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String path = getServletContext().getRealPath("/WEB-INF/chapter10/ex2/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/views/chapter10/ex2/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}