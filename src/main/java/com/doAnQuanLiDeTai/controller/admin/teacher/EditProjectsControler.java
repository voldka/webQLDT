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

@WebServlet(name = "teacher-edit-projects", urlPatterns = "/teacher-edit-projects")
public class EditProjectsControler extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            String typeId = request.getParameter("typeId");
            request.setAttribute("typeId",typeId);
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/EditProjects.jsp");
            rd.forward(request, response);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String action = request.getParameter("action");
        if (action != null && action.equals("editproject")) {
            long id = Long.parseLong(request.getParameter("id"));
            TopicSERVICE.deleteTopic(id);
            response.sendRedirect(request.getContextPath() + "/teacher-list-projects");
        } else {
            if (action != null && action.equals("addproject")) {
                String name= request.getParameter("name");
                String target= request.getParameter("target");
                String status= request.getParameter("status");
                long typeId= Long.parseLong(request.getParameter("typeId"));
                TopicSERVICE.addTopic(typeId,name,target,0,status,0,model);
                response.sendRedirect(request.getContextPath()+"/teacher-list-projects?id="+typeId);
            }
        }
    }
}
