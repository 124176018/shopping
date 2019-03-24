package com.aishang.po;

public class lable {
    private Integer lid;
    private String lname;
    private Integer csid;

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    @Override
    public String toString() {
        return "lable{" +
                "lid=" + lid +
                ", lname='" + lname + '\'' +
                ", csid=" + csid +
                '}';
    }
}
