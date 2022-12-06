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
import model.ProductDetail;
import model.ProductImageDetail;
import service.ProductService;
import service.Implement.ProductServiceImpl;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ProductService productService;
	private Product product;
	private ProductDetail productDetail;
	private List<ProductImageDetail> list_image;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		session.removeAttribute("registerStatusTrue");
		session.removeAttribute("loginStatusTrue");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	request.setCharacterEncoding("utf-8");
    	HttpSession session = request.getSession();
    	
    	session.removeAttribute("registerStatusTrue");
		session.removeAttribute("loginStatusTrue");
    	
    	String action = request.getParameter("action");
    	String productID = request.getParameter("productCode");
    	
    	String url = "views/product.jsp";
    	
    	if(action == null)
    	{
    		action = "show";
    	}
    	
    	if(action.equals("show")) {
    		url = "views/product.jsp";
    	}
    	else if(action.equals("showProduct")) {
    		this.list_image = this.productService.getProductImageByID(Integer.parseInt(productID));
    		this.product = this.productService.getProductByID(Integer.parseInt(productID));
    		this.productDetail = this.productService.getProductDetailByID(Integer.parseInt(productID));
    		
    		session.setAttribute("list_image", this.list_image);
    		session.setAttribute("product_detail", this.product);
    		session.setAttribute("productDetail", this.productDetail);
    		
    		url = "views/product.jsp";
    	}
    	
    	request.getRequestDispatcher(url).forward(request, response);
	}

}
