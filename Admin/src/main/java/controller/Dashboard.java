package controller;

import javax.servlet.*;
import javax.servlet.http.*;

import model.Account;

import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet({"/","/dashboard"})
public class Dashboard extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("account");
		String url = "views/dashboard.jsp";
		if(account != null)
		{
			url = "views/dashboard.jsp";
			request.setAttribute("title" , "Admin Dashboard");
			request.setAttribute("page_title" , "Dashboard");
			url = "views/dashboard.jsp";
		}
		else
		{
			url = "views/dashboard.jsp";
			request.setAttribute("title" , "Login");
			url = "views/sign-in.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
