package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.NotificationHibernateService;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;
import com.doAnQuanLiDeTai.model.NotificationModel;
import com.doAnQuanLiDeTai.model.UserModel;
import com.doAnQuanLiDeTai.service.INotificationService;
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

@WebServlet(name = "teacher-home", urlPatterns = {"/teacher-home"})

public class HomeTeacherController extends HttpServlet {
    @Inject
    private INotificationService notificationService;
    @Inject
    private IUserService userService;
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
            if (message != null) {
                request.setAttribute("message", resourceBundle.getString(message));
            }
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/HomePageTeacher.jsp");
            rd.forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String action = request.getParameter("action-notificate");
        if (action != null && action.equals("addNotification")) {
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            NotificationHibernateService.addNewNotificate(model, title, content);
            response.sendRedirect(request.getContextPath() + "/teacher-home");
        }
        else{
            if (action!=null && action.equals("deleteNotificate")){
                long id = Long.parseLong(request.getParameter("id"));
                NotificationHibernateService.deleteNotificat(id);
                response.sendRedirect(request.getContextPath() + "/teacher-home");
            }else {
                response.sendRedirect(request.getContextPath() + "/teacher-home");
            }
        }
    }
}
