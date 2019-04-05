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

        }else {
            cartItems.put(pid,cartItem);
        }
        subTotal= subTotal + cartItem.getTotal();
    }
}
