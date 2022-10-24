package com.doAnQuanLiDeTai.dao.impl;

import com.doAnQuanLiDeTai.dao.INotificationDAO;
import com.doAnQuanLiDeTai.mapper.impl.NotificationMapper;
import com.doAnQuanLiDeTai.model.NotificationModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NotificationDAO extends AbstractDAO<NotificationModel> implements INotificationDAO {
    @Override
    public List<NotificationModel> findAll() {
        String sql = "SELECT * FROM notification";
        return query(sql, new NotificationMapper());
    }
}
