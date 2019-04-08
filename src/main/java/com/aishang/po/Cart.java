package com.aishang.po;

import java.util.*;

public class Cart {
    private Map<Integer,CartItem> cartItems =new HashMap<Integer,CartItem>();
    private double subTotal;

    public Collection<CartItem> getCartItems() {
        return cartItems.values();
    }

    public void setCartItems(Map<Integer, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public void addCartItem(CartItem cartItem){
        Integer pid = cartItem.getProduct().getPid();
        if (cartItems.containsKey(pid)){
            CartItem oldcartItem = cartItems.get(pid);
            int oldproCount = oldcartItem.getProCount();
            int newproCount =cartItem.getProCount();
            cartItem.setProCount( oldproCount + newproCount);
            cartItems.put(pid,cartItem);
            subTotal= (subTotal-oldproCount*cartItem.getProduct().getMarket_price()) + cartItem.getTotal();
        }else {
            cartItems.put(pid,cartItem);

            subTotal= subTotal + cartItem.getTotal();
        }

    }
   /*//手动更改数量
    public void updateCartItemCount(Integer pid, Integer proCount){
        CartItem oldcartItem = cartItems.get(pid);
        int oldproCount = oldcartItem.getProCount();
        oldcartItem.setProCount(proCount);
        System.out.println(oldcartItem.getTotal());
        subTotal= (subTotal-oldproCount*oldcartItem.getProduct().getMarket_price()) + oldcartItem.getTotal();
        System.out.println(subTotal);


    }*/
    /*清空购物车里的购物项*/
    public void emptyCartItem(Integer pid){
        subTotal=subTotal-cartItems.get(pid).getTotal();
       cartItems.remove(pid);


    }

}
