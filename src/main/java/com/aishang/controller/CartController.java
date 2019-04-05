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
    /*修改购物项物品的数量*/
    @RequestMapping("upCartItem.do")
    public String upCartItem(){
        return null;
    };
}
