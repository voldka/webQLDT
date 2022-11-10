package com.doAnQuanLiDeTai.dao;

import com.doAnQuanLiDeTai.model.UserModel;

public interface IUserDAO extends IGenericDAO<UserModel> {
    UserModel findByUserNameAndPassWordAndStatus(String userName, String password, Integer status);

}
