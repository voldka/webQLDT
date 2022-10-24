package com.doAnQuanLiDeTai.service;

import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.model.NotificationModel;

import java.util.List;

public interface IListTypeOfTopicService {
    public List<ListTypeOfTopicModel> findAll();
    public int getTotalItem();
}
