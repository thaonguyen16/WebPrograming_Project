package hcmute.edu.vn.webexercise13v2.MusicStoreApp.cart;

import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.Product;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.data.ProductIO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MSA_ProductServlet", value = "/MusicStoreApp/product")
public class MSA_ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String path = getServletContext().getRealPath("/WEB-INF/chapter10/ex2/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);
        session.removeAttribute("cart");

        String url = "/MusicStoreApp/menu_cart.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
