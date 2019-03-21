package com.aishang.controller;
import com.aishang.po.User;
import com.aishang.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class DoLoginController {
 @Resource
 private IUserService userService;

 @RequestMapping("loginuser.do")
 public String loginuser(User user) {
  User user1 = userService.findUser(user);

  System.out.println(user1+"ni shi ");
  if (user1==null) {
   System.out.println(user1 + "啥比玩意111");
   return "index";
  }

  System.out.println(user1 + "啥比玩意");

  return "index";
 }
}
