package controller;

import javax.servlet.*;
import javax.servlet.http.*;

import model.Account;
import service.AccountService;
import service.Implement.AccountServiceImpl;

import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
	
	private AccountService accountService;
    /**
	 * 
	 */
	
	public void init() {
		this.accountService = new AccountServiceImpl();
	}
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		request.setAttribute("title" , "Admin Profile");
        request.setAttribute("page_title" , "Profile");
        request.getRequestDispatcher("views/profile.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	HttpSession session = request.getSession();
    	
    	String url = "views/profile.jsp";
    	
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
    	
    	Account old_admin = (Account) session.getAttribute("account");
    	
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
    	admin.setID(old_admin.getID());
    	
    	try {
    		this.accountService.edit(admin);
    		
			session.setAttribute("account", admin);
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	request.getRequestDispatcher(url).forward(request, response);
    }
}
