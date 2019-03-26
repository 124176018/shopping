package com.aishang.controller;

import com.aishang.po.User;
import com.aishang.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private IUserService userService;
    @RequestMapping("doregistration.do")
   /* 当注册账号的时候验证账号是否可以注册的方法*/
    public void doregistration(String username, HttpServletResponse response) {
        PrintWriter out = null;
        try {
            out = response.getWriter();
            User username1 = userService.findUserByName(username);
            if (username1==null){
                /* 当打印yes的时候证明用户名字不存在可以使用*/
                out.print("yes");
            }else{
                /* 当打印NO的时候证明不可以使用*/
                out.print("no");
            }

        } catch (IOException e) {
            e.printStackTrace();

        }finally {
            out.close();
        }

    }
    @RequestMapping("getregistration.do")
    /*AXAJ判断验证码是否想等*/
    public void getregistration(HttpServletRequest request,HttpServletResponse response,String codeid)  {
        PrintWriter out = null;
        try {
            out = response.getWriter();
            HttpSession session = request.getSession();
            String codeimage = (String) session.getAttribute("code");
            if (codeid.equals(codeimage)){
                out.print("yes");
            }else {
                out.print("no");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            out.close();
        }

    }

}
