package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.LineItem;
import utils.CookieUtil;
import utils.ParseObjectToJson;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParseObjectToJson parse;

	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		this.parse = new ParseObjectToJson();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
    	request.setCharacterEncoding("utf-8");
    	
		Cart cart = getCart(request,response);
		String line = getStringCart(request,response);
		
		session.setAttribute("cart", cart);
		session.removeAttribute("registerStatusTrue");
		session.removeAttribute("loginStatusTrue");
		
		NumberFormat formatter = new DecimalFormat("#0");
		String totalBill = "0";
		String subBill = "0";
		
		int cartTrue = 0;

		try {
			if(line.length() > 0) {
				
				cartTrue = 1;
				double pr = 0;
				for (LineItem items : cart.getLineItem()) {
					pr += Double.parseDouble(items.getTotalPrice());
				}
				
				subBill = String.valueOf(formatter.format(pr));
				totalBill = String.valueOf(formatter.format(pr+35000));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("totalBill", totalBill);
		session.setAttribute("subBill", subBill);
		session.setAttribute("cartTrue", cartTrue);
		
		
		request.setAttribute("title" , "Cart Ecommerce Electric || Web Programming Final Project");
        request.getRequestDispatcher("views/cart.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		session.removeAttribute("registerStatusTrue");
		session.removeAttribute("loginStatusTrue");
		
		String action = request.getParameter("action");
		String addCartStatus = "false";
		
		String url = "/home";

		if (action.equals("addCart")) {
			
			Date date = new Date();

			String productCode = request.getParameter("productCode");
			String productName = request.getParameter("productName");
			String productImg = request.getParameter("productImg");
			String quantity = request.getParameter("quantity");
			String price = request.getParameter("price");
			String category = request.getParameter("categoryCode");

			double pr = Double.parseDouble(price);
			NumberFormat formatter = new DecimalFormat("#0");
			String totalPrice = String.valueOf(formatter.format(pr * Integer.parseInt(quantity)));
			session.setAttribute("totalPrice", totalPrice);
			
			LineItem items = new LineItem();
			items.setID("L" + date.toString());
			items.setPrice(price);
			items.setTotalPrice(totalPrice);
			items.setProductCode(Integer.parseInt(productCode));
			items.setProductImg(productImg);
			items.setProductName(productName);
			items.setQuantity(Integer.parseInt(quantity));
			items.setCategoryCode(category);
			
			List<LineItem> listItem = new ArrayList<>();
			listItem.add(items);
			
			Cart cart = getCart(request,response);
			String line = getStringCart(request,response);

			if(line.length() > 0)
			{
				List<LineItem> list = cart.getLineItem();
				list.add(items);
				cart.setLineItem(list);
				
				addCart(request,response,cart);
			
			}
			else {
				Cart newCart = new Cart();
				newCart.setLineItem(listItem);
				newCart.setCartID("C" + date.toString());
				
				addCart(request,response,newCart);
				
			}
			
			addCartStatus = "true"; 
			
			//session.removeAttribute("cart");
		}
		
		request.setAttribute("addCartStatus", addCartStatus);
		request.getRequestDispatcher(url).forward(request, response);
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
		//System.out.println(line);

		if(line.length() > 0)
			newcart = this.parse.StringToOject(line);
		
		//System.out.println("Cart: ");
		//System.out.println(newcart.getLineItem().size());
		
		return newcart;
	}

	private void addCart(HttpServletRequest request, HttpServletResponse response, Cart cart) {
		
		Cookie c = new Cookie("cart", this.parse.ObjectToString(cart));
		c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 2 years
		c.setPath("/");
		response.addCookie(c);
	}
}
