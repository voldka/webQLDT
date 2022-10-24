package com.doAnQuanLiDeTai.controller.web;

import com.doAnQuanLiDeTai.dao.INotificationDAO;
import com.doAnQuanLiDeTai.model.NotificationModel;
import com.doAnQuanLiDeTai.service.INotificationService;
import com.doAnQuanLiDeTai.service.impl.NotificationService;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "trang-chu", urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
    private INotificationService notificationService = new NotificationService();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        NotificationModel model =new NotificationModel();
        model.setListResult(notificationService.findAll());
        request.setAttribute("model",model);
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/homePageUser.jsp");
        rd.forward(request,response);

    }
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}