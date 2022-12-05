package hcmute.edu.vn.webexercise13v2.chapter13.ex2.admin;

import hcmute.edu.vn.webexercise13v2.chapter13.ex1.business.User;
import hcmute.edu.vn.webexercise13v2.chapter13.ex2.data.UserDB;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "13_Ex2Servlet" , value="/Chapter13/Ex2/ch13_ex2_userAdmin")
public class UsersServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String url = "/views/chapter13/ex2/index.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }
        
        // perform action and set URL to appropriate page
        switch (action) {
            case "display_users": {
                // get list of users
                List<User> users = UserDB.selectUsers();
                request.setAttribute("users", users);
                break;
            }
            case "display_user": {
                String emailAddress = request.getParameter("email");
                User user = UserDB.selectUser(emailAddress);
                session.setAttribute("user", user);
                url = "/views/chapter13/ex2/user.jsp";
                break;
            }
            case "update_user": {
                // get parameters from the request
                String email = request.getParameter("email");
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");

                // get and update user
                User user = (User) session.getAttribute("user");
                user.setEmail(email);
                user.setFirstName(firstName);
                user.setLastName(lastName);
                UserDB.update(user);

                // get and set updated users
                List<User> users = UserDB.selectUsers();
                request.setAttribute("users", users);
                break;
            }
            case "delete_user": {
                // get the user
                String email = request.getParameter("email");
                User user = UserDB.selectUser(email);

                // delte the user
                UserDB.delete(user);

                // get and set updated users
                List<User> users = UserDB.selectUsers();
                request.setAttribute("users", users);
                break;
            }
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    
}