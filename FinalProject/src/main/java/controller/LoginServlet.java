package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.Cart;
import service.AccountService;
import service.Implement.AccountServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static AccountService ac;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		ac = new AccountServiceImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("title", "Login");
		request.getRequestDispatcher("views/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		login(request, response);
	}

	static void login(HttpServletRequest request, HttpServletResponse response) throws IOException {

		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		String loginStatusTrue = "false";

		session.removeAttribute("message_login");

		String user_name = request.getParameter("phone");
		String pass_word = request.getParameter("password");
		String remember = request.getParameter("remember");

		Account account = ac.get(user_name, pass_word);

		if (account == null) {
			session.setAttribute("message_login", "Information Login not correct!");
			response.sendRedirect(request.getContextPath() + "/login");
		} else {
			session.setAttribute("account", account);
			session.setAttribute("user", account);
			
			loginStatusTrue = "true";
			
			session.setAttribute("loginStatusTrue", loginStatusTrue);
			
			if(remember != null)
			{
				if (remember.equals("remember")) {
					setPhoneUser(request, response, user_name);
				}
			}

			response.sendRedirect(request.getContextPath() + "/");
		}
	}

	static void setPhoneUser(HttpServletRequest request, HttpServletResponse response, String phone) {

		Cookie c = new Cookie("user_phone", phone);
		c.setMaxAge(60 * 60 * 24 * 7 * 3); // set age to 7 day
		c.setPath("/");
		response.addCookie(c);
	}

}
