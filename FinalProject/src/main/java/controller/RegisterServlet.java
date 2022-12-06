package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import service.AccountService;
import service.Implement.AccountServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static AccountService ac;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
        ac = new AccountServiceImpl();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	request.setCharacterEncoding("UTF-8");
        request.setAttribute("title" , "Register");
    	request.getRequestDispatcher("views/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
        register(request,response);
	}
	
	static void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        
        String registerStatusTrue = "false";
        String url = request.getContextPath() + "/register";

        session.removeAttribute("message_username");
        session.removeAttribute("message_phone");
        session.removeAttribute("message_pass");

        String full_name = request.getParameter("fullname");
        String phone = request.getParameter("phone").trim();
        String username = request.getParameter("username").trim();
        String confirm_password = request.getParameter("confirm-pass").trim();
        String pass_word = request.getParameter("password").trim();

        Account account = new Account();

        account.setPassword(pass_word);
        account.setUsername(username);
        account.setPhone(phone);
        account.setRole("user");
        account.setFullName(full_name);

        if(confirm_password.equals(pass_word))
        {
            if(ac.check_username(username)==1)
            {

                session.setAttribute("message_username" , "Username existed!");
                url = request.getContextPath() + "/register";
                response.sendRedirect(request.getContextPath() + "/register");
            }
            else if(ac.check_phone(phone)==1)
            {

                session.setAttribute("message_phone" , "Phone existed!");
                url = request.getContextPath() + "/register";
                response.sendRedirect(request.getContextPath() + "/register");
            }
            else
            {
                ac.insert(account);
                session.setAttribute("account", account);
                
                registerStatusTrue = "true";
                
                session.setAttribute("registerStatusTrue" , registerStatusTrue);
                
                url = request.getContextPath() + "/login";
                response.sendRedirect(request.getContextPath() + "/login");
            }
        }
        else
        {
        	url = "/register";;
            session.setAttribute("message_pass" , "Password is not matched!");
            response.sendRedirect(request.getContextPath() + "/register");
        }
    }
}
