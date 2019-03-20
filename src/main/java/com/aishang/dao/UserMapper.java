package com.aishang.dao;

public interface IUserMapper {
    /*往user表里添加用户信息的方法*/
     void addUser(User user);
    /*根据用户名查询user表里是否有这个用户为AXAJ做准备*/
    User findUserByName(String username);
}
