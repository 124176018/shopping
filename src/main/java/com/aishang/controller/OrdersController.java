package com.aishang.controller;

import com.aishang.dao.OrdersMapper;
import com.aishang.po.Cities;
import com.aishang.po.User;

import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrdersController {
    @Resource
    private OrdersMapper ordersMapper;
    @RequestMapping("getOder.do")
    public String getOder(HttpServletRequest request,Integer parent_area_code, Model model ) {
        HttpSession session = request.getSession();
        User  useraddr = (User) session.getAttribute("su");
        String[] addrsplit = useraddr.getAddr().split("-");
        session.setAttribute("a",addrsplit[0]);
        session.setAttribute("b",addrsplit[1]);
        session.setAttribute("c",addrsplit[2]);
        List<Cities> userAddr = ordersMapper.findUserAddr(1);
        model.addAttribute("userAddr",userAddr);
        return "orderjsp";
    }

    @RequestMapping(value="/getOder1.do",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String getOder1(Integer parent_area_code) {

        List<Cities> userCity = ordersMapper.findUserCity(parent_area_code);

    return JSONArray.fromObject(userCity).toString();
    }
}
