package com.aishang.controller;

import com.aishang.dao.OrdersMapper;
import com.aishang.dao.ProductMapper;
import com.aishang.po.*;

import com.aishang.service.OrdersService;
import com.aishang.service.ProductService;
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
import java.util.*;

@Controller
@RequestMapping("/order")
public class OrdersController {
    @Resource
    private OrdersService ordersService;
    @Resource
    private HttpSession session;
    /*查询user表切割Addr地址
    * 查询省市表查询出所有的省*/
    @RequestMapping("getOder.do")
    public String getOder() {
        if(session.getAttribute("su")==null){
            return "redirect:/user/getlogin.do";
        }
            User  useraddr = (User) session.getAttribute("su");
            if(useraddr!=null){
                String[] addrsplit = useraddr.getAddr().split("-");
                session.setAttribute("a",addrsplit[0]);
                session.setAttribute("b",addrsplit[1]);
                session.setAttribute("c",addrsplit[2]);
                List<Cities> userAddr = ordersService.findUserAddr(1);
                session.setAttribute("userAddr",userAddr);

            }
            return "orderjsp";


    }
/*返回JSON数据源城市给前台JSP页面省市联动*/
    @RequestMapping(value="/getOder1.do",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String getOder1(Integer parent_area_code) {
        List<Cities> userCity = ordersService.findUserCity(parent_area_code);
    return JSONArray.fromObject(userCity).toString();
    }

    @RequestMapping(value="/getNewAddr.do",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String getNewAddr(User user,String add1,String add2 ,String add3){
        user.setAddr(add1+"-"+add2+"-"+add3);
        ordersService.updateAddr(user);
        User userByUid = ordersService.findUserByUid(user.getUid());
        System.out.println(JSONArray.fromObject(userByUid).toString());
        return JSONArray.fromObject(userByUid).toString();
    }

    @RequestMapping("creatOrder.do")
    public String creatOrder(Orders orders,User user){
        /*添加邮寄地址用户信息到Orders表里*/
        User userByUid = ordersService.findUserByUid(user.getUid());
        orders.setName( userByUid.getName());
        orders.setPhone(userByUid.getPhone());
        orders.setAddr(userByUid.getAddr());
        /*设置时间*/
        Date date = new java.sql.Date(new Date().getTime());
        orders.setOrdertime(date);
        /*设置订单状态0---未付款*/
        orders.setState(0);


        Cart cart = (Cart) session.getAttribute("cart");
        /*封装OrderItem信息*/
        List<OrderItem> orderItemList = new ArrayList<>();
        for (CartItem cartItem: cart.getCartItems()) {
            OrderItem orderItem = new OrderItem();
            orderItem.setPid(cartItem.getProduct().getPid());
            orderItem.setSubtotal(cart.getSubTotal());
            orderItem.setCount(cartItem.getProCount());
            orderItemList.add(orderItem);
        }
        /*调用Service,创建订单*/
        ordersService.creatOrder(orders,orderItemList);
        /*清除购物车*/
        session.removeAttribute("cart");
        return "pay";
    }



}
