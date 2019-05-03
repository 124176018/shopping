package com.aishang.controller;

import com.aishang.dao.OrdersMapper;
import com.aishang.po.CartItem;
import com.aishang.po.Cities;
import com.aishang.po.Product;
import com.aishang.po.User;

import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrdersController {
    @Resource
    private OrdersMapper ordersMapper;
    @Resource
    private HttpSession session;
    /*查询user表切割Addr地址
    * 查询省市表查询出所有的省*/
    @RequestMapping("getOder.do")
    public String getOder(Integer parent_area_code, String[] hobby, CartItem cartItem) {
        if(session.getAttribute("su")==null){
            return "redirect:/user/getlogin.do";
        }else{
            for (String hh:hobby) {


            }
            User  useraddr = (User) session.getAttribute("su");
            if(useraddr!=null){
                String[] addrsplit = useraddr.getAddr().split("-");
                session.setAttribute("a",addrsplit[0]);
                session.setAttribute("b",addrsplit[1]);
                session.setAttribute("c",addrsplit[2]);
                List<Cities> userAddr = ordersMapper.findUserAddr(1);
                session.setAttribute("userAddr",userAddr);
            }
            return "orderjsp";
        }

    }
/*返回JSON数据源城市给前台JSP页面省市联动*/
    @RequestMapping(value="/getOder1.do",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String getOder1(Integer parent_area_code) {
        List<Cities> userCity = ordersMapper.findUserCity(parent_area_code);
    return JSONArray.fromObject(userCity).toString();
    }

    @RequestMapping(value="/getNewAddr.do",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String getNewAddr(User user,String add1,String add2 ,String add3){
        user.setAddr(add1+"-"+add2+"-"+add3);
        ordersMapper.updateAddr(user);
        User userByUid = ordersMapper.findUserByUid(user.getUid());
        System.out.println(JSONArray.fromObject(userByUid).toString());
        return JSONArray.fromObject(userByUid).toString();
    }


}
