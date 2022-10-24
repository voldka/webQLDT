package com.doAnQuanLiDeTai.service.impl;

import com.doAnQuanLiDeTai.dao.IListTypeOfTopicDAO;
import com.doAnQuanLiDeTai.dao.impl.ListTypeOfTopicDAO;
import com.doAnQuanLiDeTai.model.ListTypeOfTopicModel;
import com.doAnQuanLiDeTai.model.NotificationModel;
import com.doAnQuanLiDeTai.service.IListTypeOfTopicService;

import java.util.List;

public class ListTypeOfTopicService implements IListTypeOfTopicService {

    private IListTypeOfTopicDAO listTopic = new ListTypeOfTopicDAO();
    @Override
    public List<ListTypeOfTopicModel> findAll() {return listTopic.findAll();};
    @Override
    public int getTotalItem(){return listTopic.getTotalItem();};
}
