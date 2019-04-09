package com.aishang.controller;

import com.aishang.po.*;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.text.normalizer.NormalizerBase;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Resource
    private ProductService productService;
    /*添加商品到购物车*/

    @RequestMapping("getCart.do")
    public String getCart() {
        return "cart";
    }
    @RequestMapping("addCartItem.do")
    public void addCartItem(HttpServletRequest request, CartItem cartItem , Integer pid, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        ProductImageExt product = productService.findProduct(pid);
        cartItem.setProduct(product);

        if(session.getAttribute("cart")==null){
           Cart cart = new Cart();
           cart.addCartItem(cartItem);
           session.setAttribute("cart",cart);

        }else {
            Cart cart1 = (Cart)session.getAttribute("cart");
             cart1.addCartItem(cartItem);

        }
        out.print("yes");
    }
   /* 修改购物项物品的数量*//*
    @RequestMapping("upCartItem.do")
    public void upCartItem(HttpServletRequest request,HttpServletResponse response,Integer pid,Integer proCount) throws IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        System.out.println(proCount+"更改后商品数量");
        System.out.println(pid+"更改的商品PID");
        if(session.getAttribute("cart") != null){
            Cart cart = (Cart)session.getAttribute("cart");
            cart.updateCartItemCount(pid,proCount);

        }
        out.print("yes");

    };*/
    /*删除购物车里的购物项*/
    @RequestMapping("emptyCart.do")
    public void emptyCart(HttpServletRequest request ,HttpServletResponse response ,Integer pid) throws IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
            Cart cart = (Cart)session.getAttribute("cart");
            cart.emptyCartItem(pid);
            session.setAttribute("cart",cart);
            out.print("yes");

    }
    /*清空购物车所有的购物信息*/
    @RequestMapping("clearCart.do")
    public void clearCart(HttpServletRequest request ,HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        Cart cart = (Cart)session.getAttribute("cart");
        cart.clearItem();
        session.setAttribute("cart",cart);
        out.print("yes");

    }
}
