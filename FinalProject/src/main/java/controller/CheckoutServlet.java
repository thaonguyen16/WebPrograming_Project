package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.Bill;
import model.Cart;
import model.CartDB;
import model.LineItem;
import service.BillService;
import service.Implement.BillServiceImpl;
import utils.CookieUtil;
import utils.ParseObjectToJson;

/**
 * Servlet implementation class CheckoutServlet
 */
@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParseObjectToJson parse;
	private BillService billService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
		this.parse = new ParseObjectToJson();
		this.billService  = new BillServiceImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	HttpSession session = request.getSession();
    	request.setCharacterEncoding("utf-8");
    	session.removeAttribute("registerStatusTrue");
		session.removeAttribute("loginStatusTrue");
    	
    	Account user = (Account) session.getAttribute("user");
    	String url = "views/login.jsp";
    	
    	if(user != null)
    	{
    		Cart cart = getCart(request,response);
    		String cart_string = getStringCart(request,response);
    		
    		session.setAttribute("cart", cart);
    		
    		NumberFormat formatter = new DecimalFormat("#0");
    		String totalBill = "0";
    		String subBill = "0";
    		
    		int checkoutStatus = 0;

    		try {
    			if(cart_string.length() > 0) {
    				
    				double pr = 0;
    				for (LineItem items : cart.getLineItem()) {
    					pr += Double.parseDouble(items.getTotalPrice());
    				}
    				
    				subBill = String.valueOf(formatter.format(pr));
    				totalBill = String.valueOf(formatter.format(pr+35000));
    				
    				checkoutStatus = 1;
    			}
    		}
    		catch(Exception e) {
    			e.printStackTrace();
    		}
    		
    		session.setAttribute("totalBill", totalBill);
    		session.setAttribute("subBill", subBill);
    		session.setAttribute("checkoutStatus", checkoutStatus);
    		
    		
    		request.setAttribute("title" , "Checkout");
    		url = "views/checkout.jsp";
    	}
    	else {
    		request.setAttribute("message_status", "Please, login to checkout!");
    		url = "views/login.jsp";
    	}	
    	request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		
		String url = "views/checkout.jsp";
		
		HttpSession session = request.getSession();
		Account user = (Account) session.getAttribute("user");

		int checkoutStatusTrue = 0;
		if(action.equals("order")) 
		{
			String country = request.getParameter("country");
			String fullname = request.getParameter("fullname");
			String address = request.getParameter("address");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String ordernotes = request.getParameter("ordernotes");
			
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -1);
			
			Cart nowcart = getCart(request,response);
			
			String billCode = "B" + cal.getTime();
			String date = dateFormat.format(cal.getTime());
			
			Bill newBill = new Bill();
			newBill.setAddress(address);
			newBill.setBillCode(billCode);
			newBill.setCart(nowcart.getCartID());
			newBill.setCountry(country);
			newBill.setDate(date);
			newBill.setEmail(email);
			newBill.setFullName(fullname);
			newBill.setOrderNotes(ordernotes);
			newBill.setPhone(phone);
			newBill.setUser_name(user.getUsername());
			newBill.setStatus("Checking");
			
			double pr = 0;
			int number = 0;
			
			for(LineItem line : nowcart.getLineItem()) {
				
				pr += Double.parseDouble(line.getTotalPrice());
				number ++;
				
				this.billService.insertLineItem(line);
				
				CartDB newCartDB = new CartDB();
				newCartDB.setCartID(nowcart.getCartID());
				newCartDB.setLineItemID(line.getID());
				
				this.billService.insertCart(newCartDB);
			}
			
			newBill.setAllBill(pr);
			newBill.setQuantity(number);
			
			this.billService.insert(newBill);
			deleteCookies(request,response);
			deleteCart(request,response);
			
			url = "views/checkout-status.jsp";
			
			checkoutStatusTrue = 1;
			
			session.removeAttribute("cart");
		}
		
		request.setAttribute("checkoutStatusTrue", checkoutStatusTrue);
		request.setAttribute("title", "Checkout Status");
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	private void deleteCart(HttpServletRequest request, HttpServletResponse response) {
			
		Cookie c = new Cookie("cart", "");
		c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 2 years
		c.setPath("/");
		response.addCookie(c);
	}

	private Cart getCart(HttpServletRequest request, HttpServletResponse response) {

		Cart newcart = new Cart();

		Cookie[] cart = request.getCookies();
		String line = CookieUtil.getCookieValue(cart, "cart");
		//System.out.println(line);

		if(line.length() > 0)
			newcart = this.parse.StringToOject(line);
		
		//System.out.println("Cart: ");
		//System.out.println(newcart.getLineItem().size());
		
		return newcart; 
	}
	
	private String getStringCart(HttpServletRequest request, HttpServletResponse response) {

		Cookie[] cart = request.getCookies();
		String line = CookieUtil.getCookieValue(cart, "cart");
		System.out.println("Line:" + line.length());
		return line;
	}
	
	private void deleteCookies(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null)
			for (Cookie cookie : cookies) {
				cookie.setValue("");
				cookie.setPath("/");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
	}
	
}
