package com.doAnQuanLiDeTai.mapper.impl;

import com.doAnQuanLiDeTai.mapper.RowMapper;
import com.doAnQuanLiDeTai.model.NotificationModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NotificationMapper implements RowMapper<NotificationModel> {
    @Override
    public NotificationModel mapRow(ResultSet resultSet) {
        try {
            NotificationModel notificate = new NotificationModel();
            notificate.setId(resultSet.getLong("id"));
            notificate.setTitle(resultSet.getString("title"));
            notificate.setCreatedDate(resultSet.getTimestamp("createddate"));
            return notificate;
        }catch (SQLException e){
            return null;
        }
    }
}
