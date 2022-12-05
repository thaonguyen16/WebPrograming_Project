package hcmute.edu.vn.webexercise13v2.MusicStoreApp.email;

import hcmute.edu.vn.webexercise13v2.chapter13.ex1.business.User;
import hcmute.edu.vn.webexercise13v2.chapter13.ex1.data.UserDB;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "MSA_EmailServlet", value = "/MusicStoreApp/email")
public class MSA_EmailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/MusicStoreApp/email.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String url = "/MusicStoreApp/email.jsp";
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/MusicStoreApp/email.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            System.out.println(firstName);

            // store data in User object
            User user = new User();
            user.setEmail(email);
            user.setFirstName(firstName);
            user.setLastName(lastName);

            User user1 = user;

            // validate the parameters
            String message;
            if (UserDB.emailExists(user.getEmail())) {
                message = "This email address already exists.<br>" +
                        "Please enter another email address.";
                url = "/MusicStoreApp/email.jsp";
            }
            else {
                message = "";
                url = "/MusicStoreApp/thanks_email.jsp";
                UserDB.insert(user);
                registerUser(request,response,user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        request.getRequestDispatcher(url).forward(request,response);
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response, User user) {

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/chapter09/EmailList.txt");
        UserIO.add(user, path);

        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email as a cookie
        Cookie c1 = new Cookie("emailCookie", user.getEmail());
        c1.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c1.setPath("/");                      // allow entire app to access it
        response.addCookie(c1);

        // add a cookie that stores the user's as a cookie
        Cookie c2 = new Cookie("firstNameCookie", user.getFirstName());
        c2.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c2.setPath("/");                      // allow entire app to access it
        response.addCookie(c2);

        // create and return a URL for the appropriate Download page
        String productCode = (String) session.getAttribute("productCode");
        String url = "/views/chapter09/ex1/" + productCode + "_download.jsp";
        return url;
    }
}
