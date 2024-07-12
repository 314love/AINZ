package com.czxy.domain;

/**
 * @Created by Intellij IDEA.
 * @Author: qx
 * @Date: 2022/3/7
 */
public class RecordVo {
    private Integer pagesize=12;
    private Integer pagenum=1;

    @Override
    public String toString() {
        return "RecordVo{" +
                "pagesize=" + pagesize +
                ", pagenum=" + pagenum +
                '}';
    }

    public RecordVo(Integer pagesize, Integer pagenum) {
        this.pagesize = pagesize;
        this.pagenum = pagenum;
    }

    public RecordVo() {
    }

    public Integer getPagesize() {
        return pagesize;
    }

    public void setPagesize(Integer pagesize) {
        this.pagesize = pagesize;
    }

    public Integer getPagenum() {
        return pagenum;
    }

    public void setPagenum(Integer pagenum) {
        this.pagenum = pagenum;
    }
}
