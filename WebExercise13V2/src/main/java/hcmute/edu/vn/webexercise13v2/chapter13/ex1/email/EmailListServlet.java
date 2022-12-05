package hcmute.edu.vn.webexercise13v2.chapter13.ex1.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import hcmute.edu.vn.webexercise13v2.chapter13.ex1.business.User;
import hcmute.edu.vn.webexercise13v2.chapter13.ex1.data.UserDB;

@WebServlet(name = "13_Ex1Servlet", value="/Chapter13/Ex1/ch13_ex1_email")
public class EmailListServlet extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/views/chapter13/ex1/index.html";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/views/chapter13/ex1/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object
            User user = new User();
            user.setEmail(email);
            user.setFirstName(firstName);
            user.setLastName(lastName);

            // validate the parameters
            String message;
            if (UserDB.emailExists(user.getEmail())) {
                message = "This email address already exists.<br>" +
                          "Please enter another email address.";
                url = "/views/chapter13/ex1/index.jsp";
            }
            else {
                message = "";
                url = "/views/chapter13/ex1/thanks.jsp";
                UserDB.insert(user);
            }



            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        request.getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/chapter13/ex1/index.jsp").forward(req,resp);
    }
}