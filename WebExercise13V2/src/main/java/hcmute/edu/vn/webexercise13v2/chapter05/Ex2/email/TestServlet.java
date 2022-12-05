package hcmute.edu.vn.webexercise13v2.chapter05.Ex2.email;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TestServlet", value = "/Chapter05/Ex2/ch05_ex2_email/test")
public class TestServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");        
        PrintWriter out = response.getWriter();        
        try {
            out.println("<h1>TestServlet Post</h1>");
        } 
        finally {
            out.close();
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");        
        PrintWriter out = response.getWriter();        
        try {
            out.println("<h1>TestServlet Get</h1>");
        } 
        finally {
            out.close();
        }
    }    
}