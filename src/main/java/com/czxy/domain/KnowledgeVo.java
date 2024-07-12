package com.czxy.domain;


public class KnowledgeVo {
    private Integer pagesize=10;
    private Integer pagenum=1;
    private String name;

    @Override
    public String toString() {
        return "KnowledgeVo{" +
                "pagesize=" + pagesize +
                ", pagenum=" + pagenum +
                ", name='" + name + '\'' +
                '}';
    }

    public KnowledgeVo(Integer pagesize, Integer pagenum, String name) {
        this.pagesize = pagesize;
        this.pagenum = pagenum;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public KnowledgeVo() {
    }

    public KnowledgeVo(Integer pagesize, Integer pagenum) {
        this.pagesize = pagesize;
        this.pagenum = pagenum;
    }
}
