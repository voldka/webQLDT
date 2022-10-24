package com.doAnQuanLiDeTai.controller.web;

import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.model.NotificationModel;
import com.doAnQuanLiDeTai.service.IListTypeOfTopicService;
import com.doAnQuanLiDeTai.service.impl.ListTypeOfTopicService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "list-type-of-topic", urlPatterns = "/list-type-of-topic")
public class ListTypeOfTopic extends HttpServlet {

    private IListTypeOfTopicService listTypeOfTopicService = new ListTypeOfTopicService();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ListTypeOfTopicModel model =new ListTypeOfTopicModel();
        model.setListResult(listTypeOfTopicService.findAll());
        request.setAttribute("model",model);
        request.setAttribute("countModel",listTypeOfTopicService.getTotalItem());
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/ListTypeOfTopic.jsp");
        rd.forward(request,response);
    }
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}