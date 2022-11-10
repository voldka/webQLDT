package com.doAnQuanLiDeTai.controller.admin.student;

import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.service.IUserService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "student-detail-project", urlPatterns = "/student-detail-project")
public class DetailProjectStudentController extends HttpServlet {
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