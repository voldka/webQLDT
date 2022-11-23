package com.doAnQuanLiDeTai.controller.web;

import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;

import com.doAnQuanLiDeTai.utils.FormUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "list-projects", urlPatterns = "/list-projects")
public class ListProjects extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/ListProjects.jsp");
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
        } else if (action != null && action.equals("regis")) {

            String fullname = request.getParameter("fullname");
            byte[] bytes = fullname.getBytes(StandardCharsets.ISO_8859_1);
            fullname = new String(bytes, StandardCharsets.UTF_8);

            User model = new User();
            model.setUsername(request.getParameter("username"));
            model.setPassword(request.getParameter("password"));
            model.setStatus(Long.parseLong(request.getParameter("status")));
            model.setFullname(fullname);

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