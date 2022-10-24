package com.doAnQuanLiDeTai.mapper.impl;

import com.doAnQuanLiDeTai.mapper.RowMapper;
import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.model.NotificationModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ListTypeOfTocpicMapper implements RowMapper<ListTypeOfTopicModel> {
    @Override
    public ListTypeOfTopicModel mapRow(ResultSet resultSet) {
        try {
            ListTypeOfTopicModel rs = new ListTypeOfTopicModel();
            rs.setId(resultSet.getLong("id"));
            rs.setCreatedDate(resultSet.getTimestamp("createddate"));
            rs.setName(resultSet.getString("name"));
            return rs;
        }catch (SQLException e){
            return null;
        }
    }
}

