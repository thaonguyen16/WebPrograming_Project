package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;
import service.ProductService;
import service.Implement.ProductServiceImpl;

/**
 * Servlet implementation class CatalogServlet
 */
@WebServlet("/catalog")
public class CatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CatalogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
    	this.productService = new ProductServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	HttpSession session = request.getSession();
    	
    	String category = request.getParameter("category");
    	String brand = request.getParameter("brand");
    	
    	if(category != null)
    	{
    		if(brand != null)
    		{
    			List<Product> list_product = this.productService.getByCategory_Brand(category,brand);
        		session.setAttribute("list_product", list_product);
    		}
    		else
    		{
    			List<Product> list_product = this.productService.getByCategory(category);
        		session.setAttribute("list_product", list_product);
    		}
    	}
    	
		request.getRequestDispatcher("views/catalog.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
