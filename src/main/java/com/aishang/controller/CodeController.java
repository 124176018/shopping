package com.aishang.controller;

import cn.dsna.util.images.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class CodeController {
    @RequestMapping("getcodeimage.do")
    /*生成验证码图片*/
    public void getcodeimage(HttpServletRequest requestequest, HttpServletResponse response, Model model) {

        ValidateCode vc = new ValidateCode(150, 50, 4, 60);
        try {
            vc.write(response.getOutputStream());
            String code = vc.getCode();
            model.addAttribute("code", code);
            HttpSession session = requestequest.getSession();
            session.setAttribute("code", code);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
