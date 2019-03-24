package com.aishang.po;

public class category {
    private Integer cid;
    private String cnname;
    private Integer cstate;

    @Override
    public String toString() {
        return "category{" +
                "cid=" + cid +
                ", cnname='" + cnname + '\'' +
                ", cstate=" + cstate +
                '}';
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCnname() {
        return cnname;
    }

    public void setCnname(String cnname) {
        this.cnname = cnname;
    }

    public Integer getCstate() {
        return cstate;
    }

    public void setCstate(Integer cstate) {
        this.cstate = cstate;
    }
}
