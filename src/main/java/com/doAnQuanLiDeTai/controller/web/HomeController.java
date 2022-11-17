package com.doAnQuanLiDeTai.controller.web;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.NotificationHibernateService;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;
import com.doAnQuanLiDeTai.utils.FormUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import java.io.*;
import java.util.List;
import java.util.ResourceBundle;


import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/trang-chu", "/dang-nhap", "/thoat", "/dang-ki","/quen-mk"})
public class HomeController extends HttpServlet {

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            List<Notification> model = NotificationHibernateService.findAll();
            request.setAttribute("model", model);
            String message = request.getParameter("message");
            if (message != null) {
                request.setAttribute("message", resourceBundle.getString(message));
            }
            RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/homePageUser.jsp");
            rd.forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("login")) {
            User model = FormUtil.toModel(User.class, request);
            model = UserSERVICE.findUser(model.getUsername(), model.getPassword());
            if (model != null) {
                SessionUtil.getInstance().putValue(request, "USERMODEL", model);
                if (model.getRole().getName().equals("STUDENT")) {
                    response.sendRedirect(request.getContextPath() + "/student-home");
                } else if (model.getRole().getName().equals("TEACHER")) {
                    response.sendRedirect(request.getContextPath() + "/teacher-home");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/trang-chu?message=username_password_invalid");
            }
        } else if (action != null && action.equals("regis")) {
            User model = FormUtil.toModel(User.class, request);
            model.setStatus(Long.parseLong(request.getParameter("status")));
            User model2 = model;
            model2 = UserSERVICE.findUser(model.getUsername(), model.getPassword());
            if (model2 == null) {
                long roleId= model.getStatus();
                UserSERVICE.addUser(model.getUsername(), model.getPassword(), model.getFullname(), model.getStatus());
                response.sendRedirect(request.getContextPath() + "/dang-nhap?message=register_complete");
            } else if (model != null) {
                response.sendRedirect(request.getContextPath() + "/trang-chu?message=user_already_exist");
            }
        }else if (action != null && action.equals("forgot")) {

        }

    }
}