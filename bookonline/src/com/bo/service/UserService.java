package com.bo.service;

import com.bo.entity.User;
import com.bo.utils.Md5Util;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author ding
 * @ClassaName UserService
 * @Despription 用户业务逻辑类
 * @Date 2019/10/4
 * @Version 1.0
 **/
public class UserService {
    private List<User> userList;

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
    /**
     * 用户登录功能
     *
     * @param account
     * @param password
     * @return user
     */
    public User signIn(String account, String password){
        for (User user : userList){
            if (user.getAccount().equals(account) && user.getPassword().equals(Md5Util.crypt(password))){
                return user;
            }
        }
        return null;
    }
}

