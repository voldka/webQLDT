package com.doAnQuanLiDeTai.service;

import com.doAnQuanLiDeTai.model.UserModel;

public interface IUserService {
    UserModel findByUserNameAndPassWordAndStatus(String userName, String password, Integer status);
}
