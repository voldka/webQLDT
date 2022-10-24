package com.doAnQuanLiDeTai.dao;

import com.doAnQuanLiDeTai.dao.impl.NotificationDAO;
import com.doAnQuanLiDeTai.model.NotificationModel;

import java.sql.SQLException;
import java.util.List;

public interface INotificationDAO {
    List<NotificationModel> findAll();
}
