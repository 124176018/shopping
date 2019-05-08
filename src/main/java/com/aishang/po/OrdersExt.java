package com.aishang.po;

import java.util.List;

public class OrdersExt extends Orders {
    private List<OrderitemExt> orderitemExtList;

    public List<OrderitemExt> getOrderitemExtList() {
        return orderitemExtList;
    }

    public void setOrderitemExtList(List<OrderitemExt> orderitemExtList) {
        this.orderitemExtList = orderitemExtList;
    }
}
