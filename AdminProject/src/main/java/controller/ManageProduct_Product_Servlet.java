package controller;

import model.Category;
import model.Product;
import service.CategoryService;
import service.Implement.CategoryServiceImpl;
import service.Implement.ProductServiceImpl;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageProduct_Product_Servlet", value = "/Admin_ManageProduct_Product")
public class ManageProduct_Product_Servlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    private static ProductService service;
    private static CategoryService category_service;
    private static List<Product> list_product;
    private static List<Category> list_category;
    private static long sum_product;

    public void init() {
        service = new ProductServiceImpl();
        category_service = new CategoryServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        list_product = service.get_all();
        sum_product = service.sum();
        list_category = category_service.get_all();

        session.setAttribute("list_product" , list_product);
        session.setAttribute("sum_product" , sum_product);
        session.setAttribute("list_category" , list_category);

        request.setAttribute("title", "Manage Product - Category || Web Programming Final Project");
        request.setAttribute("page_title" , "Product");
        request.setAttribute("category_current" , "Laptop");

        request.getRequestDispatcher("views/manage_product_product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
