package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
import com.doAnQuanLiDeTai.utils.SessionUtil;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="teacher-edit-TypeOfTopic" , urlPatterns = "/teacher-edit-TypeOfTopic")
public class EditTypeOfTopicControler extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/EditTypeOfTopic.jsp");
            rd.forward(request, response);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String action = request.getParameter("action");
        if (action != null && action.equals("editTypeOfTopic")) {
            long id = Long.parseLong(request.getParameter("id"));
            TopicSERVICE.deleteTopic(id);
            response.sendRedirect(request.getContextPath() + "/teacher-list-projects");
        } else {
            if (action != null && action.equals("addTypeOfTopic")) {
                String name= request.getParameter("name");
                TopicSERVICE.addNewTypeOfTopic(name,model);
                response.sendRedirect(request.getContextPath()+"/teacher-list-type-of-topic");
            }
        }
    }
}
