package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.TypeOfTopic;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.model.UserModel;
import com.doAnQuanLiDeTai.service.IListTypeOfTopicService;
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
import java.util.List;

@WebServlet(name = "teacher-list-type-of-topic", urlPatterns = "/teacher-list-type-of-topic")
public class ListTypeOfTopicTeacherController extends HttpServlet {
    @Inject
    private IUserService userService;
    @Inject
    private IListTypeOfTopicService listTypeOfTopicService;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<TypeOfTopic> model = TopicSERVICE.findAllTypeOfTopic();
        int countModel = TopicSERVICE.getTotalType();
        request.setAttribute("model", model);
        request.setAttribute("countModel", countModel);
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/ListTypeOfTopic.jsp");
        rd.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}
