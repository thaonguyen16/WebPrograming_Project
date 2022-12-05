package hcmute.edu.vn.webexercise13v2.MusicStoreApp.admin;

import hcmute.edu.vn.webexercise13v2.chapter13.ex1.business.User;
import hcmute.edu.vn.webexercise13v2.chapter13.ex2.data.UserDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MSAAdminServlet", value = "/MusicStoreApp/admin")
public class MSA_AdminServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String url = "/MusicStoreApp/admin_index.jsp";

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
                url = "/MusicStoreApp/admin_user.jsp";
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

                // delete the user
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
