package com.doAnQuanLiDeTai.controller.admin.student;

import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.hibernateService.UserSERVICE;
import com.doAnQuanLiDeTai.utils.FormUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "student-thongtinsv", urlPatterns = "/student-thongtinsv")
public class thongtinsinhvien extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action != null && action.equals("editTTSV")) {
            User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            request.setAttribute("model", model);
            RequestDispatcher rd = request.getRequestDispatcher("views/student/Editthongtinsinhvien.jsp");
            rd.forward(request, response);
        } else {
            User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            request.setAttribute("model", model);
            RequestDispatcher rd = request.getRequestDispatcher("views/student/thongtinsinhvien.jsp");
            rd.forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("editProUser")) {
            User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            String fullname = FormUtil.parseStringUTF8(request.getParameter("fullname"));
            String code = FormUtil.parseStringUTF8(request.getParameter("code"));
            String birthday = FormUtil.parseStringUTF8(request.getParameter("birthday"));
            String major = FormUtil.parseStringUTF8(request.getParameter("major"));
            String bgeducate = FormUtil.parseStringUTF8(request.getParameter("bgeducate"));
            String locate = FormUtil.parseStringUTF8(request.getParameter("locate"));
            String numberphone = FormUtil.parseStringUTF8(request.getParameter("numberphone"));
            UserSERVICE.addOrEditProfile(model, fullname, code, birthday, major, bgeducate, locate, numberphone);
            response.sendRedirect(request.getContextPath() + "/student-thongtinsv");
        } else {
            response.sendRedirect(request.getContextPath() + "/student-home");
        }
    }
}