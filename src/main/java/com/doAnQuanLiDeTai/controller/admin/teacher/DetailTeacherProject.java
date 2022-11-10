package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.model.UserModel;
import com.doAnQuanLiDeTai.service.IUserService;
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

@WebServlet(name = "teacher-detail-project", urlPatterns = "/teacher-etail-project")
public class DetailTeacherProject extends HttpServlet {
    @Inject
    private IUserService userService;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ListTypeOfTopicModel model = new ListTypeOfTopicModel();

        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/detailProject.jsp");
        rd.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}