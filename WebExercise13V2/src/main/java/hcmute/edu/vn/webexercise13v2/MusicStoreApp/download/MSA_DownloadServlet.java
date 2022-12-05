package hcmute.edu.vn.webexercise13v2.MusicStoreApp.download;

import hcmute.edu.vn.webexercise13v2.chapter13.ex1.business.User;
import hcmute.edu.vn.webexercise13v2.MusicStoreApp.email.UserIO;
import hcmute.edu.vn.webexercise13v2.chapter09.ex1.util.CookieUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MSA_DownloadServlet", value = "/MusicStoreApp/download")
public class MSA_DownloadServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/MusicStoreApp/download.jsp";
        switch (action) {
            case "viewAlbums":
                url = "/MusicStoreApp/download.jsp";
                break;
            case "checkUser":
                url = checkUser(request, response);
                break;
            case "viewCookies":
                url = "/MusicStoreApp/view_cookies.jsp";
                break;
            case "deleteCookies":
                url = deleteCookies(request, response);
                break;
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // perform action and set URL to appropriate page
        String url = "/MusicStoreApp/download.jsp";
        if (action.equals("registerUser")) {
            url = "/MusicStoreApp/email";
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String checkUser(HttpServletRequest request,HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode", productCode);
        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/MusicStoreApp/email";
            }
            // if cookie exists, create User object and go to Downloads page
            else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/chapter09/ex1/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);

                url = "/MusicStoreApp/" + productCode + "_download.jsp";
                session.removeAttribute("user");
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/MusicStoreApp/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String deleteCookies(HttpServletRequest request,
                                 HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/MusicStoreApp/delete_cookies.jsp";
        return url;
    }
}
