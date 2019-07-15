package com.aishang.controller;

import com.aishang.po.*;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
    public String addCartItem(HttpServletRequest request, CartItem cartItem, Integer pid, HttpServletResponse response) throws IOException {
        /*PrintWriter out = response.getWriter();*/
        HttpSession session = request.getSession();
        ProductImageExt product = productService.findProduct(pid);
        cartItem.setProduct(product);

        if (session.getAttribute("cart") == null) {
            Cart cart = new Cart();
            cart.addCartItem(cartItem);
            session.setAttribute("cart", cart);

        } else {
            Cart cart1 = (Cart) session.getAttribute("cart");
            cart1.addCartItem(cartItem);

        }
       /* out.print("yes");*/
        return "redirect:/order/getOder.do";
    }

    /*加数量*/
    @Resource
    private HttpSession session;

    @RequestMapping("upCartItemadd.do")
    @ResponseBody
    public String upCartItem(Integer pid, Integer proCount) throws IOException {

        proCount = proCount + 1;
        System.out.println(proCount + "加后商品数量");
        System.out.println(pid + "加的商品PID");

            Cart cart = (Cart) session.getAttribute("cart");
            cart.updateCartItemCount(pid, proCount);
            double newSubTotal = cart.getSubTotal();
            return newSubTotal+ "";
    };
    /*减数量*/
    @RequestMapping("upCartItemsub.do")
    @ResponseBody
    public String upCartItemsub(Integer pid,Integer proCount) throws IOException {
        if (proCount > 1) {
            proCount = proCount - 1;
        }
        System.out.println(proCount + "减后商品数量");
        System.out.println(pid + "减的商品PID");
            Cart cart = (Cart)session.getAttribute("cart");
            cart.updateCartItemCount(pid, proCount);
            double subSubTotal = cart.getSubTotal();
            System.out.println(subSubTotal);
            return subSubTotal + "";
    };
    /*删除购物车里的购物项*/
    @RequestMapping("emptyCart.do")
    public void emptyCart(HttpServletRequest request, HttpServletResponse response, Integer pid) throws IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
            Cart cart = (Cart) session.getAttribute("cart");
            cart.emptyCartItem(pid);
            session.setAttribute("cart", cart);
            out.print("yes");

    }
    /*清空购物车所有的购物信息*/
    @RequestMapping("clearCart.do")
    public void clearCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        Cart cart = (Cart) session.getAttribute("cart");
        cart.clearItem();
        session.setAttribute("cart", cart);
        out.print("yes");

    }
}
