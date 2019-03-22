package com.aishang.controller;

import com.aishang.po.User;
import com.aishang.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
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
        session.setAttribute("su", user1);
        if (user1 == null) {
            return "login";
        }

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
        /*正则表达式后端验证邮箱的正确格式和手机号的正确格式*/
        String eg = "(?=^[\\w.@]{6,50}$)\\w+@\\w+(?:\\.[\\w]{2,3}){1,2}";
        String mobileRegex = "^1(3|4|5|7|8)\\d{9}$";
        /*System.out.println("asfd@asdf.com".matches(eg));输出结果为false*/
        /* System.out.println("2321222".matches(mobileRegex));输出结果为false*/

        /*验证添加的用户信息不能为空和空字符串*/
        if (user.getUsername() != null && user.getUsername() != "" ||
                user.getPassword() != null && user.getPassword() != "" ||
                user.getEmail() != null && user.getEmail() != "" ||
                user.getPhone() != null && user.getPhone() != "") {
            if (user.getEmail().matches(eg) && user.getPhone().matches(mobileRegex)) {
                userService.addUser(user);
            }

        }

        return "login";
    }

}
