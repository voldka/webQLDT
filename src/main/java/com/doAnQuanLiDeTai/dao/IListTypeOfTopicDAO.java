package com.doAnQuanLiDeTai.dao;

import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;

import java.util.List;

public interface IListTypeOfTopicDAO {
    List<ListTypeOfTopicModel> findAll();
    int getTotalItem();
}
