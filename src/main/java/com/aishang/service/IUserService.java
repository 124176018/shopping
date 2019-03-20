package com.aishang.service;

import com.aishang.po.User;

public interface IUserService {
/*往user表里添加用户信息的方法*/
    void addUser(User user);
   /* 根据用户名查询user表里是否有这个用户为AXAJ做准备*/
    User findUserByName(String username);
    /*根据查询user表验证是否存在这个用户用于登录验证*/
    User findUser(String username, String password );

}
