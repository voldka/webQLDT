package com.doAnQuanLiDeTai.controller.admin.student;

import com.doAnQuanLiDeTai.hibernateMODEL.Topic;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;
import com.doAnQuanLiDeTai.service.IUserService;
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

@WebServlet(name = "student-list-projects", urlPatterns = "/student-list-projects")
public class ListProjectsStudentController extends HttpServlet {
    @Inject
    private IUserService userService;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            long typeId = Long.parseLong(request.getParameter("id"));
            List<Topic> model = TopicSERVICE.findAllTopicOfType(typeId);
            request.setAttribute("model",model);
            request.setAttribute("typeId",typeId);
            int countModel;
            if(model !=null) {
                countModel = model.size();
            }else {
                countModel=0;
            }
            request.setAttribute("countModel",countModel);
            RequestDispatcher rd = request.getRequestDispatcher("views/student/ListProjectStudent.jsp");
            rd.forward(request, response);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}