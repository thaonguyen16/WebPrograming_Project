package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import service.AccountService;
import service.Implement.AccountServiceImpl;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/account")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AccountService accountService;
	private List<Account> account_list;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public void init() {
		this.accountService = new AccountServiceImpl();
		this.account_list = new ArrayList<>();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		this.account_list = this.accountService.get_all_account();
		
		session.setAttribute("account_list", this.account_list);
		// TODO Auto-generated method stub
		request.setAttribute("title", "Manage Account");
		request.setAttribute("page_title", "Account");
		request.getRequestDispatcher("views/menu-account.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		String url = "views/menu-account.jsp";
	
		
		if(action.equals("add")) {
			String imgURl = request.getParameter("imgURl");
			String address = request.getParameter("address");
			Date birthdate = new Date(0);
			try {
				birthdate = (Date) new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("birthdate"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String email = request.getParameter("email");
			String fullname = request.getParameter("fullname");
			String gender = request.getParameter("gender");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String username = request.getParameter("username");

			Account admin = new Account();

			admin.setAddress(address);
			admin.setBirthdate(birthdate);
			admin.setEmail(email);
			admin.setFullName(fullname);
			admin.setGender(gender);
			admin.setImageURL(imgURl);
			admin.setPassword(password);
			admin.setPhone(phone);
			admin.setUsername(username);
			admin.setRole("admin");

			try {
				this.accountService.insert(admin);
				
				this.account_list = this.accountService.get_all_account();
				session.setAttribute("account_list", this.account_list);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(action.equals("update"))
		{
			request.setAttribute("update_true", true);
			String id = request.getParameter("id");
			
			Account old_account = this.accountService.get_by_id(Integer.parseInt(id));
			
			session.setAttribute("old_account", old_account);
		}
		
		else if(action.equals("delete")) {
			
			String id = request.getParameter("id");
			
			try {
				Account de_account = this.accountService.get_by_id(Integer.parseInt(id));
		
				if(de_account != null) {
					this.accountService.delete(id);
					
					this.account_list = this.accountService.get_all_account();
					session.setAttribute("account_list", this.account_list);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(action.equals("update_account")) {
			String imgURl = request.getParameter("imgURl");
			String address = request.getParameter("address");
			Date birthdate = new Date(0);
			try {
				birthdate = (Date) new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("birthdate"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String email = request.getParameter("email");
			String fullname = request.getParameter("fullname");
			String gender = request.getParameter("gender");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String username = request.getParameter("username");

			Account admin = new Account();
			Account old_account = (Account) session.getAttribute("old_account");

			admin.setAddress(address);
			admin.setBirthdate(birthdate);
			admin.setEmail(email);
			admin.setFullName(fullname);
			admin.setGender(gender);
			admin.setImageURL(imgURl);
			admin.setPassword(password);
			admin.setPhone(phone);
			admin.setUsername(username);
			admin.setRole("admin");
			admin.setID(old_account.getID());

			try {
				this.accountService.edit(admin);
				
				this.account_list = this.accountService.get_all_account();
				session.setAttribute("account_list", this.account_list);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
