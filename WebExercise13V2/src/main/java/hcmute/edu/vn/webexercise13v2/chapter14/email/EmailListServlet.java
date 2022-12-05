package hcmute.edu.vn.webexercise13v2.chapter14.email;

import hcmute.edu.vn.webexercise13v2.chapter14.business.User;
import hcmute.edu.vn.webexercise13v2.chapter14.data.UserDB;
import hcmute.edu.vn.webexercise13v2.chapter14.util.MailUtilGmail;
import hcmute.edu.vn.webexercise13v2.chapter14.util.MailUtilLocal;

import java.io.*;
import javax.mail.MessagingException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "14_Ex1Servlet" , value="/Chapter14/Ex1/ch14_ex1_email")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/views/chapter14/index.jsp";
        if (action.equals("join")) {
            url = "/views/chapter14/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            request.setAttribute("user", user);
            
            // send email to user
            String to = email;
            String from = "thaonttth01@gmail.com";
            String subject = "Welcome to our email list";
            String body = "Dear " + firstName + ",\n\n" +
                "Thanks for joining our email list. We'll make sure to send " +
                "you announcements about new products and promotions.\n" +
                "Have a great day and thanks again!\n\n" +
                "Kelly Slivkoff\n" +
                "Mike Murach & Associates";
            boolean isBodyHTML = false;

            try
            {
                MailUtilGmail.sendMail(to, from, subject, body, isBodyHTML);
            }
            catch (MessagingException e)
            {
                String errorMessage = 
                    "ERROR: Unable to send email. " + 
                        "Check Tomcat logs for details.<br>" +
                    "NOTE: You may need to configure your system " + 
                        "as described in chapter 14.<br>" +
                    "ERROR MESSAGE: " + e.getMessage();
                request.setAttribute("errorMessage", errorMessage);
                this.log(
                    "Unable to send email. \n" +
                    "Here is the email you tried to send: \n" +
                    "=====================================\n" +
                    "TO: " + email + "\n" +
                    "FROM: " + from + "\n" +
                    "SUBJECT: " + subject + "\n" +
                    "\n" +
                    body + "\n\n");
            }            
            url = "/views/chapter14/thanks.jsp";
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/chapter14/index.jsp").forward(req,resp);
    }
}