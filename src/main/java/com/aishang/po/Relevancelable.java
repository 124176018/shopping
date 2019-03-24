package com.aishang.po;

public class Relevancelable {
    private Integer rid;
    private Integer pid;
    private Integer lid;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    @Override
    public String toString() {
        return "Relevancelable{" +
                "rid=" + rid +
                ", pid=" + pid +
                ", lid=" + lid +
                '}';
    }
}
