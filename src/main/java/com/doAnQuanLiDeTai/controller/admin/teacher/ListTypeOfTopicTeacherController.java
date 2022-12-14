package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.TypeOfTopic;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.NotificationHibernateService;
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
import java.util.ResourceBundle;

@WebServlet(name = "teacher-list-type-of-topic", urlPatterns = "/teacher-list-type-of-topic")
public class ListTypeOfTopicTeacherController extends HttpServlet {
    @Inject
    private IUserService userService;
    @Inject
    private IListTypeOfTopicService listTypeOfTopicService;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            List<TypeOfTopic> model = TopicSERVICE.findAllTypeOfTopic();
            int countModel = TopicSERVICE.getTotalType();
            request.setAttribute("model", model);
            request.setAttribute("countModel", countModel);
            String message = request.getParameter("message");
            if (message != null) {
                request.setAttribute("message", resourceBundle.getString(message));
            }
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/ListTypeOfTopicTeacher.jsp");
            rd.forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String action = request.getParameter("action");
        if (action != null && action.equals("addTypeOfTopic")) {
            String name = FormUtil.parseStringUTF8(request.getParameter("name"));
            TopicSERVICE.addNewTypeOfTopic(name, model);
            response.sendRedirect(request.getContextPath() + "/teacher-list-type-of-topic");
        } else {
            if (action != null && action.equals("editTypeOfTopic")) {
                String name = FormUtil.parseStringUTF8(request.getParameter("name"));
                long id = Long.parseLong(request.getParameter("id"));
                TopicSERVICE.editTypeOfTopic(name, id);
                response.sendRedirect(request.getContextPath() + "/teacher-list-type-of-topic");
            } else if (action != null && action.equals("edit")) {
                long id = Long.parseLong(request.getParameter("id"));
                response.sendRedirect(request.getContextPath() + "/teacher-edit-TypeOfTopic?id=" + id + "&&action=edit");
            } else {
                if (action != null && action.equals("deleteTypeOfTopic")) {
                    long id = Long.parseLong(request.getParameter("id"));
                    if(TopicSERVICE.deleteTypeOfTopic(id)){
                        response.sendRedirect(request.getContextPath() + "/teacher-list-type-of-topic");
                    }else {
                        response.sendRedirect(request.getContextPath() + "/teacher-list-type-of-topic?message=can_not_delete");
                    }
                } else {
                    response.sendRedirect(request.getContextPath() + "/teacher-list-type-of-topic?message=can_not_delete");
                }
            }

        }
    }
}
