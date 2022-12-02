package com.doAnQuanLiDeTai.controller.admin.student;

import com.doAnQuanLiDeTai.hibernateMODEL.Topic;
import com.doAnQuanLiDeTai.hibernateMODEL.TypeOfTopic;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;
import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
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

@WebServlet(name = "student-detail-project", urlPatterns = "/student-detail-project")
public class DetailProjectStudentController extends HttpServlet {
    @Inject
    private IUserService userService;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            long id = Long.parseLong(request.getParameter("id"));
            long typeId = Long.parseLong(request.getParameter("typeId"));
            Topic model = TopicSERVICE.findTopicById(id);
            TypeOfTopic type=TopicSERVICE.findTypeOfTopicById(typeId);
            request.setAttribute("type",type);
            request.setAttribute("model", model);
            request.setAttribute("typeId", typeId);
            List<User> modelResiter = TopicSERVICE.findAllRegisterTopic(id);
            request.setAttribute("modelResiter",modelResiter);
            RequestDispatcher rd = request.getRequestDispatcher("views/student/detailProjectStudent.jsp");
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
        }else if(action != null && action.equals("regisTopic")){
            User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            long projectId = Long.parseLong(request.getParameter("id"));
            int flag = TopicSERVICE.regisTopic(projectId,user);
            if(flag == 1 ){
                response.sendRedirect(request.getContextPath() + "/student-list-type-of-topic?message=register_complete");
            }else{
                if(flag == 2){
                    response.sendRedirect(request.getContextPath() + "/student-list-type-of-topic?message=Registration_failed_because_full");
                }else{
                    response.sendRedirect(request.getContextPath() + "/student-list-type-of-topic?message=Registration_failed_because_already_signed_up");
                }
            }
        }
    }
}