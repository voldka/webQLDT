package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.Topic;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
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
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name = "teacher-list-projects", urlPatterns = "/teacher-list-projects")
public class ListProjectsTeacherController extends HttpServlet {
    @Inject
    private IUserService userService;
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            long typeId = Long.parseLong(request.getParameter("id"));
            List<Topic> model =TopicSERVICE.findAllTopicOfType(typeId);
            request.setAttribute("model",model);
            request.setAttribute("typeId",typeId);
            int countModel;
            if(model !=null) {
                countModel = model.size();
            }else {
                countModel=0;
            }
            request.setAttribute("countModel",countModel);
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/ListProjectTeachers.jsp");
            rd.forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String action = request.getParameter("action");
        long typeId = Long.parseLong(request.getParameter("typeId"));
        if (action != null && action.equals("delelteTopic")) {
            long id = Long.parseLong(request.getParameter("id"));
            TopicSERVICE.deleteTopic(id);
            response.sendRedirect(request.getContextPath() + "/teacher-list-projects?id="+typeId);
        } else {
            if (action != null && action.equals("addTopic")) {
                String name = request.getParameter("name");
                String target = request.getParameter("target");
                int number = Integer.parseInt(request.getParameter("number"));
                String status = request.getParameter("status");
                int rate = Integer.parseInt(request.getParameter("rate"));
                TopicSERVICE.addTopic(typeId,name,target,number,status,rate,model);
                response.sendRedirect(request.getContextPath()+"/teacher-list-projects?id="+typeId);
            }
        }
    }
}