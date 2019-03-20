package com.aishang.service;

import com.aishang.po.User;

public interface IUserService {

    void addUser(User user);

    User findUserByName(String username);

    User findUser(String username, String password );

}
