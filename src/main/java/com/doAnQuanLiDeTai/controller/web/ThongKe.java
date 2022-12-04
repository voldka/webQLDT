package com.doAnQuanLiDeTai.controller.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(name= "thong-ke", urlPatterns = "/thong-ke")
public class ThongKe extends HttpServlet {
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/thongke.jsp");
        rd.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}
