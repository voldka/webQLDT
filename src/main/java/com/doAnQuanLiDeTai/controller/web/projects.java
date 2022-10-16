package com.doAnQuanLiDeTai.controller.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "projects", urlPatterns = "/projects")
public class projects extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/projects.jsp");
        rd.forward(request,response);
    }
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}