package com.doAnQuanLiDeTai.service.impl;

import com.doAnQuanLiDeTai.dao.INotificationDAO;
import com.doAnQuanLiDeTai.dao.impl.NotificationDAO;
import com.doAnQuanLiDeTai.model.NotificationModel;
import com.doAnQuanLiDeTai.service.INotificationService;

import javax.inject.Inject;
import java.sql.SQLException;
import java.util.List;

public class NotificationService implements INotificationService {

    private INotificationDAO notificationDAO = new NotificationDAO();

    @Override
    public  List<NotificationModel> findAll(){return notificationDAO.findAll();}
}
