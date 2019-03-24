package com.aishang.po;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Orders {
    private Integer oid;
    private Double total;
    private Date ordertime;
    private Integer state;
    private String name;
    private String phone;
    private String addr;
    private Integer uid;

    public Integer getOid() {
        return oid;
    }
    public void setOid(Integer oid) {
        this.oid = oid;
    }
    public Double getTotal() {
        return total;
    }
    public void setTotal(Double total) {
        this.total = total;
    }
    public Date getOrdertime() {
        return ordertime;
    }
    public String getOrdertimeToString() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatter.format(ordertime);
    }
    public void setOrdertime(Date ordertime) {
        this.ordertime = new Timestamp(ordertime.getTime());
    }
    public Integer getState() {
        return state;
    }
    public void setState(Integer state) {
        this.state = state;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddr() {
        return addr;
    }
    public void setAddr(String addr) {
        this.addr = addr;
    }
    public Integer getUid() {
        return uid;
    }
    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
