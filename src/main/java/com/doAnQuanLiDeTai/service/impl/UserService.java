package com.doAnQuanLiDeTai.service.impl;

import com.doAnQuanLiDeTai.dao.IUserDAO;
import com.doAnQuanLiDeTai.dao.impl.UserDAO;
import com.doAnQuanLiDeTai.model.UserModel;
import com.doAnQuanLiDeTai.service.IUserService;

public class UserService implements IUserService {

    private IUserDAO user= new UserDAO();
    @Override
    public UserModel findByUserNameAndPassWordAndStatus(String userName, String password, Integer status) {
        return user.findByUserNameAndPassWordAndStatus(userName, password, status);
    }
}
