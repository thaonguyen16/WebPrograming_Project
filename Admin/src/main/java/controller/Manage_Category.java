package controller;

import model.Brand;
import model.Category;
import model.Product;
import service.CategoryService;
import service.ProductService;
import service.Implement.CategoryServiceImpl;
import service.Implement.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/product")
public class Manage_Category extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    private static ProductService pro_service;
    private CategoryService category_pro_service;
    
    private List<Product> list_product;
    private List<Category> list_category;
    private List<Brand> list_brand;
    private List<Brand> list_all_brand;
    
    private String sum_product;

    public void init() {
        pro_service = new ProductServiceImpl();
        this.category_pro_service = new CategoryServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        
        
        this.list_category = this.category_pro_service.get_all();
        this.sum_product = String.valueOf(pro_service.sumByCategory(this.list_category.get(0).getCategoryCode()));
        this.list_product = pro_service.get_by_category(this.list_category.get(0).getCategoryCode());
        this.list_brand = pro_service.getAllBrand(this.list_category.get(0).getCategoryCode());
        this.list_all_brand = pro_service.getAllBrand();
        
        
        //System.out.println(list_product.get(0).getCategoryCode());

        session.removeAttribute("product");
        
        session.setAttribute("list_product" , this.list_product);
        session.setAttribute("sum_product" , this.sum_product);
        session.setAttribute("list_category" , this.list_category);
        session.setAttribute("list_brand", this.list_brand);
        session.setAttribute("category_code", this.list_category.get(0).getCategoryName());

        request.setAttribute("title", "Manage Product");
        request.setAttribute("page_title" , "Product");

        session.setAttribute("list_all_brand", this.list_all_brand);

        request.getRequestDispatcher("views/menu-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    	HttpSession session = request.getSession();
    	
    	String category_code = request.getParameter("category_code");
    	String action = request.getParameter("action");
    	
 
    	if(action.equals("ShowToCategory")) {

            this.sum_product = String.valueOf(pro_service.sumByCategory(category_code));
            this.list_product = pro_service.get_by_category(category_code);
            this.list_brand = pro_service.getAllBrand(category_code);
            this.list_category = category_pro_service.get_all();
            this.list_all_brand = pro_service.getAllBrand();
            
            
            session.setAttribute("list_product" , this.list_product);
            session.setAttribute("sum_product" , this.sum_product);
            session.setAttribute("list_category" , this.list_category);
            session.setAttribute("list_brand", this.list_brand);
            session.setAttribute("list_all_brand", this.list_all_brand);
            
            for (Category cat : list_category)
            {
            	if(cat.getCategoryCode().equals(category_code)) {
            		
            		session.setAttribute("category_code" , cat.getCategoryName());
            	}
            }
    	}
    	
    	else if(action.equals("add")) {
    		
    		add_product(request, response , get_data(request,response));
    		
    		this.sum_product = String.valueOf(pro_service.sumByCategory(request.getParameter("category")));
            this.list_product = pro_service.get_by_category(request.getParameter("category"));
            this.list_brand = pro_service.getAllBrand(request.getParameter("category"));
            this.list_all_brand = pro_service.getAllBrand();
            
            
            session.setAttribute("list_product" , this.list_product);
            session.setAttribute("sum_product" , this.sum_product);
            session.setAttribute("list_brand", this.list_brand);
            session.setAttribute("list_all_brand", this.list_all_brand);
    	}
    	else if(action.equals("update_raw"))
        {
            int id = Integer.parseInt(request.getParameter("id_product"));
            Product product = pro_service.getByID(id);
            
            session.setAttribute("product" , product);
        }
    	
    	else if(action.equals("update"))
        {
    		//int id = Integer.parseInt(request.getParameter("id_product"));
            Product product_new = get_data(request,response);
  
            Product product_old = (Product) session.getAttribute("product");
        	product_new.setID(product_old.getID());
        	
            update(request, response , product_new);
            
            this.list_category = this.category_pro_service.get_all();
            this.sum_product = String.valueOf(pro_service.sumByCategory(this.list_category.get(0).getCategoryCode()));
            this.list_product = pro_service.get_by_category(this.list_category.get(0).getCategoryCode());
            this.list_brand = pro_service.getAllBrand(this.list_category.get(0).getCategoryCode());
            this.list_all_brand = pro_service.getAllBrand();
            
            session.setAttribute("list_product" , this.list_product);
            session.setAttribute("sum_product" , this.sum_product);
            session.setAttribute("list_brand", this.list_brand);
            session.setAttribute("list_all_brand", this.list_all_brand);
            
            session.removeAttribute("product");

        }
        else if(action.equals("delete"))
        {
            delete(request,response);
            
            this.list_category = this.category_pro_service.get_all();
            this.sum_product = String.valueOf(pro_service.sumByCategory(this.list_category.get(0).getCategoryCode()));
            this.list_product = pro_service.get_by_category(this.list_category.get(0).getCategoryCode());
            this.list_brand = pro_service.getAllBrand(this.list_category.get(0).getCategoryCode());
            this.list_all_brand = pro_service.getAllBrand();
            
            session.setAttribute("list_product" , this.list_product);
            session.setAttribute("sum_product" , this.sum_product);
            session.setAttribute("list_brand", this.list_brand);
            session.setAttribute("list_all_brand", this.list_all_brand);

        }
    	
    	request.setAttribute("title", "Manage Product");
        request.setAttribute("page_title" , "Product");
    	
    	request.getRequestDispatcher("views/menu-product.jsp").forward(request, response);
    }
    
    static Product get_data(HttpServletRequest request, HttpServletResponse response){
    	
    	String image_url = request.getParameter("image_url");
        String product_name = request.getParameter("product_name");
        long qty = Long.parseLong(request.getParameter("qty"));
        String root_price = request.getParameter("root_price");
        String current_price = request.getParameter("current_price");
        String category_code = request.getParameter("category");
        String brand_code = request.getParameter("brand");
        long sold = Long.parseLong(request.getParameter("sold"));
        long in_stock = Long.parseLong(request.getParameter("in_stock"));
        
        Product product = new Product();
        product.setBrandCode(brand_code);
        product.setCategoryCode(category_code);
        product.setImageURL(image_url);
        product.setInStock(in_stock);
        product.setPriceCurrent(current_price);
        product.setPriceRoot(root_price);
        product.setProductName(product_name);
        product.setQty(qty);
        product.setSold(sold);
        
        return product;
    }
    static void add_product(HttpServletRequest request, HttpServletResponse response , Product product)
    {

        try {
            request.setAttribute("message" , "Add category product successfully!");
            pro_service.insert(product);
        }
        catch (Exception ex)
        {
            request.setAttribute("message" , "Add category product failure!");
        }

    }
    static void update(HttpServletRequest request, HttpServletResponse response , Product product)
    {
        try {
            request.setAttribute("message" , "Update category product successfully!");
            pro_service.update(product);
        }
        catch (Exception ex)
        {
            request.setAttribute("message" , "Update category product failure!");
        }
    }
    static void delete(HttpServletRequest request, HttpServletResponse response)
    {
        int pro_code = Integer.parseInt(request.getParameter("pro_code"));
        if(pro_service.getByID(pro_code) != null) {
            try {
                request.setAttribute("message", "Delete " + pro_service.getByID(pro_code).getProductName() + " successfully!");
                pro_service.delete(pro_code);
            } catch (Exception ex) {
                request.setAttribute("message", "Delete " + pro_service.getByID(pro_code).getProductName() + " failure!");
            }
        }
    }
}
