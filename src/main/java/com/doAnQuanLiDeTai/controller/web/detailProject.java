package com.doAnQuanLiDeTai.controller.web;

import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;

import java.io.*;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "detail-project", urlPatterns = "/detail-project")
public class detailProject extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ListTypeOfTopicModel model = new ListTypeOfTopicModel();

        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/detailProject.jsp");
        rd.forward(request,response);
    }
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}