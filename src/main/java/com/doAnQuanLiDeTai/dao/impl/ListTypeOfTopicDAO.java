package com.doAnQuanLiDeTai.dao.impl;

import com.doAnQuanLiDeTai.dao.IListTypeOfTopicDAO;
import com.doAnQuanLiDeTai.mapper.impl.ListTypeOfTocpicMapper;
import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;

import java.util.List;

public class ListTypeOfTopicDAO extends AbstractDAO<ListTypeOfTopicModel> implements IListTypeOfTopicDAO {
    @Override
    public List<ListTypeOfTopicModel> findAll() {
        String sql = "SELECT * FROM typeoftopic";
        return query(sql, new ListTypeOfTocpicMapper());
    }
    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM typeoftopic";
        return count(sql);
    }
}
