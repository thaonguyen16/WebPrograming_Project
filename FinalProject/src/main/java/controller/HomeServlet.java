package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.Brand;
import model.Cart;
import model.Category;
import model.Product;
import service.AccountService;
import service.BrandService;
import service.CategoryService;
import service.ProductService;
import service.Implement.AccountServiceImpl;
import service.Implement.BrandServiceImpl;
import service.Implement.CategoryServiceImpl;
import service.Implement.ProductServiceImpl;
import utils.CookieUtil;
import utils.ParseObjectToJson;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet({"/" , "/home"})
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Category> list_category;
	private List<Brand> list_brand;
	private List<Product> list_product;
	private Account user;
	
	private CategoryService categoryService;
	private BrandService brandService;
	private ProductService productService;
	private AccountService accountService;
	
	private ParseObjectToJson parse;
    /**
     * @see HttpServlet
     */
	
    public HomeServlet() {
        super();
        
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
    	this.categoryService = new CategoryServiceImpl();
    	this.list_category = this.categoryService.get_all();
    	
    	this.brandService = new BrandServiceImpl();
    	this.list_brand = this.brandService.get_all();
    	
    	this.productService = new ProductServiceImpl();
    	this.list_product = this.productService.get_all();
    	
    	this.accountService = new AccountServiceImpl();
    	
    	this.parse = new ParseObjectToJson();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	HttpSession session = request.getSession();
    	request.setCharacterEncoding("utf-8");
        
    	int number_cart = 0;
    	
    	Cart cart = getCart(request,response);
    	String line = getStringCart(request,response);
    	String user_phone = getUser(request,response);
    	
    	
    	try {
    		if(line.length() > 0)
        	{
        		number_cart = cart.getLineItem().size();
        	}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	};
    	
    	if(user_phone.length() > 0) {
    		try {
        		this.user = this.accountService.getByEmail(user_phone);
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
    		session.setAttribute("user", this.user);
    	}
    	
    	session.setAttribute("list_category" , this.list_category);
    	session.setAttribute("list_brand", this.list_brand);
    	session.setAttribute("list_product", this.list_product);
    	session.setAttribute("number_cart", number_cart);
    	
        request.setAttribute("title" , "Home Ecommerce Electric || Web Programming Final Project");
        request.getRequestDispatcher("views/home.jsp").forward(request,response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doGet(request,response);
    }
    
    public List<Brand> getBrand(String category_code) {
    	
    	List<Brand> list_brand = this.brandService.get_brand_by_category(category_code);
    	return list_brand;
    }
    
    private String getStringCart(HttpServletRequest request, HttpServletResponse response) {

		Cookie[] cart = request.getCookies();
		String line = CookieUtil.getCookieValue(cart, "cart");
		System.out.println("Line:" + line.length());
		return line;
	}
    
    private Cart getCart(HttpServletRequest request, HttpServletResponse response) {

		Cart newcart = new Cart();

		Cookie[] cart = request.getCookies();
		String line = CookieUtil.getCookieValue(cart, "cart");
		
		if(line.length() > 0)
		{
			newcart = this.parse.StringToOject(line);
			//System.out.print(newcart);
		}
		return newcart;
	}
    
    private String getUser(HttpServletRequest request, HttpServletResponse response) {


		Cookie[] cookies = request.getCookies();
		String user_phone = CookieUtil.getCookieValue(cookies, "user_phone");
		
		return user_phone;
	}
    
    
}
