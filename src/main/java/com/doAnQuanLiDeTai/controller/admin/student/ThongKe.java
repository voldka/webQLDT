package com.doAnQuanLiDeTai.controller.admin.student;

import com.doAnQuanLiDeTai.hibernateMODEL.Topic;
import com.doAnQuanLiDeTai.hibernateMODEL.TypeOfTopic;
import com.doAnQuanLiDeTai.hibernateService.TopicSERVICE;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name= "student-thong-ke", urlPatterns = "/student-thong-ke")
public class ThongKe extends HttpServlet {
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<TypeOfTopic> listType = TopicSERVICE.findAllTypeOfTopic();
        request.setAttribute("listType",listType);
        int countModel=listType.size();
        request.setAttribute("countModel",countModel);
        List<Integer> num =new ArrayList<>();
        for(TypeOfTopic item : listType){
            Integer flag;
            List<Topic> midle =TopicSERVICE.findAllTopicOfType(item.getId());
            if( midle!=null){
                flag = midle.size();
            }else{
                flag=0;
            }
            num.add(flag);
        }
        request.setAttribute("num",num);
        RequestDispatcher rd = request.getRequestDispatcher("views/user/homePage/thongke.jsp");
        rd.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}
