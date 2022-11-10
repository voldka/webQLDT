package com.doAnQuanLiDeTai.controller.web;

import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;

import com.doAnQuanLiDeTai.utils.FormUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import java.io.*;


import javax.inject.Inject;
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

        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/detailProject.jsp");
        rd.forward(request, response);
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
        }
    }
}