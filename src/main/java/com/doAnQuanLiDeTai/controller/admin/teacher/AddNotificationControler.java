package com.doAnQuanLiDeTai.controller.admin.teacher;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.NotificationHibernateService;
import com.doAnQuanLiDeTai.utils.FormUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.*;

@MultipartConfig
@WebServlet(name = "teacher-add-notificate", urlPatterns = "/teacher-add-notificate")
public class AddNotificationControler extends HttpServlet {
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("views/teacher/AddNotification.jsp");
            rd.forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("addNotification")) {
            User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            String title = FormUtil.parseStringUTF8(request.getParameter("title"));
            String content = FormUtil.parseStringUTF8(request.getParameter("content"));
            NotificationHibernateService.addNewNotificate(model, title, content);
            response.sendRedirect(request.getContextPath() + "/teacher-home");
        } else {
//            if (action!=null && action.equals("deleteNotificate")){
//                long id = Long.parseLong(request.getParameter("id"));
//                NotificationHibernateService.deleteNotificat(id);
//            }else {
            response.sendRedirect(request.getContextPath() + "/teacher-home");
//            }
        }
    }
}
