package com.doAnQuanLiDeTai.controller.admin.student;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateService.NotificationHibernateService;
import com.doAnQuanLiDeTai.model.NotificationModel;
import com.doAnQuanLiDeTai.service.INotificationService;
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
import java.util.ResourceBundle;

@WebServlet(urlPatterns = {"/student-home"})

public class HomeStudentController extends HttpServlet {
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            List<Notification> model = NotificationHibernateService.findAll();
            request.setAttribute("model", model);
            String message = request.getParameter("message");
            if (message != null){request.setAttribute("message", resourceBundle.getString(message));}
            RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/homePageUser.jsp");
            rd.forward(request, response);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}
