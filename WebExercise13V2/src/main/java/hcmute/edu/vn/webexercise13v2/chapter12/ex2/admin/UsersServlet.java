package hcmute.edu.vn.webexercise13v2.chapter12.ex2.admin;

import java.io.*;
import java.sql.SQLException;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import hcmute.edu.vn.webexercise13v2.chapter12.ex2.business.User;
import hcmute.edu.vn.webexercise13v2.chapter12.ex2.data.UserDB;

@WebServlet(name = "10_Ex2Servlet", value="/Chapter12/Ex2/ch12_ex2_userAdmin")
public class UsersServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String url = "/views/chapter12/ex2/index.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }
        
        // perform action and set URL to appropriate page
        switch (action) {
            case "display_users": {
                // get list of users
                ArrayList<User> users;
                try {
                    users = UserDB.selectUsers();
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                request.setAttribute("users", users);
                break;
            }
            case "display_user": {
                String emailAddress = request.getParameter("email");
                User user;
                try {
                    user = UserDB.selectUser(emailAddress);
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                session.setAttribute("user", user);
                url = "/views/chapter12/ex2/user.jsp";
                break;
            }
            case "update_user": {
                // get parameters from the request
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");

                // get and update user
                User user = (User) session.getAttribute("user");
                user.setFirstName(firstName);
                user.setLastName(lastName);
                try {
                    UserDB.update(user);
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }

                // get and set updated users
                ArrayList<User> users;
                try {
                    users = UserDB.selectUsers();
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                request.setAttribute("users", users);
                break;
            }
            case "delete_user": {
                // get the user
                String email = request.getParameter("email");
                User user;
                try {
                    user = UserDB.selectUser(email);
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }

                // delte the user
                assert user != null;
                try {
                    UserDB.delete(user);
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }

                // get and set updated users
                ArrayList<User> users;
                try {
                    users = UserDB.selectUsers();
                } catch (SQLException | ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
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