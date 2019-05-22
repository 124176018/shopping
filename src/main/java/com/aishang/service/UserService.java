package com.aishang.service;
import com.aishang.dao.UserMapper;
import com.aishang.po.User;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service("userService")
public class UserService implements IUserService{
    @Resource
    private UserMapper userMapper;

    @Override
    public void addUser(User user) {

        userMapper.addUser(user);

    }

    @Override
    public User findUserByName(String username) {
        return userMapper.findUserByName(username);
    }

    @Override
    public User findUser(User user) {
        return userMapper.findUser(user);
    }

    @Override
    public void changeperson(User user) {
        userMapper.changeperson(user);
    }
}
