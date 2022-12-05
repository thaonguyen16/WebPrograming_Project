package hcmute.edu.vn.webexercise13v2.chapter03.email;

import hcmute.edu.vn.webexercise13v2.chapter03.business.User;
import hcmute.edu.vn.webexercise13v2.chapter03.data.UserDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EmailListServlet", value = "/ch02email")
public class EmailListServlet extends HttpServlet {

    @SuppressWarnings("ResultOfMethodCallIgnored")
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String url = "views\\chapter03\\index.html";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "\\views\\chapter03\\index.html";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);

            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "\\views\\chapter03\\thanks.jsp";   // the "thanks" page
        }

        // forward request and response objects to specified URL
        request.getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
