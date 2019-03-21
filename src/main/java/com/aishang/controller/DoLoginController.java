package com.aishang.controller;

import com.aishang.po.User;
import com.aishang.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;


@Controller
@RequestMapping("/user")
public class DoLoginController {
    @Resource
    private IUserService userService;
    @Resource
    private HttpSession session;

    /* 用户登录*/
    @RequestMapping("getlogin.do")
    public String getlogin() {
        return "login";
    }

    @RequestMapping("loginuser.do")
    public String loginuser(User user, HttpServletResponse response, String save) throws UnsupportedEncodingException {
        User user1 = userService.findUser(user);
        if (user1==null){
            return "login";
        }
        session.setAttribute("sessionuser", user1);
        Cookie cookie = new Cookie("user", URLEncoder.encode((user1.getUsername() + "-" + user1.getPassword()), "UTF-8"));
        if (cookie != null) {
            if (save != null) {
                cookie.setMaxAge(60 * 60 * 24 * 7);
                cookie.setPath("/");
                response.addCookie(cookie);
            } else {
                cookie.setMaxAge(0);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
            return "index";
        }
        return "login";
    }

    /* 注册用户*/
    @RequestMapping("getRegistration.do")
    public String getRegistration() {
        return "registration";
    }

    @RequestMapping("registration.do")
    public String registration(User user) {
        userService.addUser(user);
        return "login";
    }

}
