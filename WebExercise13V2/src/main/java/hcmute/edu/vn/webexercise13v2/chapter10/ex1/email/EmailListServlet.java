package hcmute.edu.vn.webexercise13v2.chapter10.ex1.email;

import hcmute.edu.vn.webexercise13v2.chapter10.ex1.business.User;
import hcmute.edu.vn.webexercise13v2.chapter10.ex1.data.UserDB;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "10_Ex1Servlet" , value = "/Chapter10/Ex1/ch10_ex1_email")
public class EmailListServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException
    {
        String url = "/views/chapter10/ex1/index.html";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/views/chapter10/ex1/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // create the User object
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);

            // store the User object in the session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty())
            {
                // forward to the view to get missing parameters
                url = "/views/chapter10/ex1/index.jsp";
            }
            else
            {
                // write the User object to a file
                UserDB.insert(user);

                // forward to the view
                url = "/views/chapter10/ex1/thanks.jsp";
            }        
        }

        request.getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
                         throws ServletException, IOException
    {
        this.doPost(request, response);
    }
}