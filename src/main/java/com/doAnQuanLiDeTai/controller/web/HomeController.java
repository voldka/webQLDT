package com.doAnQuanLiDeTai.controller.web;

import java.io.*;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "trang-chu", urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/homePageUser.jsp");
        rd.forward(request,response);
    }
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
    public void destroy() {
    }
}