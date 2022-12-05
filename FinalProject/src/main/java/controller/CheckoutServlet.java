package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
    	
		Cart cart = getCart(request,response);
		session.setAttribute("cart", cart);
		
		NumberFormat formatter = new DecimalFormat("#0");
		String totalBill = "0";
		String subBill = "0";

		if(cart.getLineItem() != null) {
			
			double pr = 0;
			for (LineItem items : cart.getLineItem()) {
				pr += Double.parseDouble(items.getTotalPrice());
			}
			
			subBill = String.valueOf(formatter.format(pr));
			totalBill = String.valueOf(formatter.format(pr+35000));
		}
		
		session.setAttribute("totalBill", totalBill);
		session.setAttribute("subBill", subBill);
		
		
		request.setAttribute("title" , "Checkout Ecommerce Electric || Web Programming Final Project");
		request.getRequestDispatcher("views/checkout.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		
		String url = request.getContextPath() + "/checkout";
		if(action.equals("order")) {
			String country = request.getParameter("country");
			String fullname = request.getParameter("fullname");
			String address = request.getParameter("address");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String ordernotes = request.getParameter("ordernotes");
			
			Date nowDate = new Date();
			
			Cart nowcart = getCart(request,response);
			String billCode = "B" + nowDate.toString();
			String user_name = "Username";
			String date = nowDate.toString();
			
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
			newBill.setUser_name(user_name);
			
			for(LineItem line : nowcart.getLineItem()) {
				this.billService.insertLineItem(line);
				
				CartDB newCartDB = new CartDB();
				newCartDB.setCartID(nowcart.getCartID());
				newCartDB.setLineItemID(line.getID());
				
				this.billService.insertCart(newCartDB);
			}
			
			this.billService.insert(newBill);
			deleteCookies(request,response);
			
			url = request.getContextPath() + "/home";
		}
		request.getRequestDispatcher(url).forward(request, response);
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
