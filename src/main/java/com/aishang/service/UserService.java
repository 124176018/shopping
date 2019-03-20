package com.aishang.service;
import com.aishang.dao.UserMapper;
import com.aishang.po.User;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service
public class UserService implements IUserService{
    @Resource
    private UserMapper userMapper;

    @Override
    public void addUser(User user) {

    }

    @Override
    public User findUserByName(String username) {
        return userMapper.findUserByName(username);
    }

    @Override
    public User findUser(String username, String password) {
        return userMapper.findUser(username,password);
    }
}
