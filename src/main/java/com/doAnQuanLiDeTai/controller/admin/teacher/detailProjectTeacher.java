package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.Topic;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;
import com.doAnQuanLiDeTai.utils.FormUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "teacher-detail-project", urlPatterns = "/teacher-detail-project")
public class detailProjectTeacher extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            long id = Long.parseLong(request.getParameter("id"));
            long typeId = Long.parseLong(request.getParameter("typeId"));
            Topic model = TopicSERVICE.findTopicById(id);
            request.setAttribute("model", model);
            request.setAttribute("typeId",typeId);
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/detailProjectTeacher.jsp");
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
        }
    }
}