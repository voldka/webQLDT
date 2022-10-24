package com.doAnQuanLiDeTai.service;

import com.doAnQuanLiDeTai.model.NotificationModel;

import java.sql.SQLException;
import java.util.List;

public interface INotificationService {
    public List<NotificationModel> findAll();
}
