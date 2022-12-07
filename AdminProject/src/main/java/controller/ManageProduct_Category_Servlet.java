package controller;

import model.Category;
import service.CategoryService;
import service.Implement.CategoryServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageProduct_Category_Servlet", value = "/Admin_ManageProduct_Category")
public class ManageProduct_Category_Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static CategoryService service;
    private static List<Category> list_category;
    private static long sum_category;

    public void init() {

        service = new CategoryServiceImpl();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        list_category = service.get_all();
        sum_category = service.sum();

        session.setAttribute("list_category" , list_category);
        session.setAttribute("sum_category" , sum_category);
        request.setAttribute("title", "Manage Product - Category");
        request.setAttribute("page_title" , "Category");

        request.getRequestDispatcher("views/manage_product_category.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");


        String url = "views/manage_product_category.jsp";
        if(action == null)
        {
            action = "home";
        }
        else if(action.equals("add"))
        {
            add_category(request, response , get_data(request,response));
            list_category = service.get_all();
            sum_category = service.sum();
            session.setAttribute("list_category" , list_category);
            session.setAttribute("sum_category" , sum_category);

            url = "views/manage_product_category.jsp";
        }
        else if(action.equals("update"))
        {
            int id = Integer.parseInt(request.getParameter("id_category"));
            Category category_new = get_data(request,response);
            category_new.setID(id);
            update(request, response , category_new);

            list_category = service.get_all();
            sum_category = service.sum();
            session.setAttribute("list_category" , list_category);
            session.setAttribute("sum_category" , sum_category);

            url = "views/manage_product_category.jsp";
        }
        else if(action.equals("delete"))
        {
            delete(request,response);

            list_category = service.get_all();
            sum_category = service.sum();

            session.setAttribute("list_category" , list_category);
            session.setAttribute("sum_category" , sum_category);


        }
        else if(action.equals("update_raw"))
        {
            int id = Integer.parseInt(request.getParameter("id_category"));
            Category category1 = service.get_by_id(id);
            request.setAttribute("category" , category1);
            url = "views/update_category.jsp";

        }
        request.getRequestDispatcher(url).forward(request, response);
    }
    static Category get_data(HttpServletRequest request, HttpServletResponse response){
        String category_name = request.getParameter("category_name");
        long qty = Long.parseLong(request.getParameter("qty"));
        long sold = Long.parseLong(request.getParameter("sold"));
        long in_stock = Long.parseLong(request.getParameter("in_stock"));
        String image_url = request.getParameter("image_url");

        Category category = new Category();
        category.setCategoryName(category_name);
        category.setQty(qty);
        category.setSold(sold);
        category.setInStock(in_stock);
        category.setImageURL(image_url);

        return category;
    }
    static void add_category(HttpServletRequest request, HttpServletResponse response , Category category)
    {

        try {
            request.setAttribute("message" , "Add category product successfully!");
            service.insert(category);
        }
        catch (Exception ex)
        {
            request.setAttribute("message" , "Add category product failure!");
        }

    }
    static void update(HttpServletRequest request, HttpServletResponse response , Category category)
    {
        try {
            request.setAttribute("message" , "Update category product successfully!");
            service.update(category);
        }
        catch (Exception ex)
        {
            request.setAttribute("message" , "Update category product failure!");
        }
    }
    static void delete(HttpServletRequest request, HttpServletResponse response)
    {
        int id = Integer.parseInt(request.getParameter("id_category"));
        if(service.get_by_id(id) != null) {
            try {
                request.setAttribute("message", "Delete " + service.get_by_id(id).getCategoryName() + " successfully!");
                service.delete(id);
            } catch (Exception ex) {
                request.setAttribute("message", "Delete " + service.get_by_id(id).getCategoryName() + " failure!");
            }
        }
    }

}