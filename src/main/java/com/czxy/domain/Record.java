package com.czxy.domain;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Created by Intellij IDEA.
 * @Author: qx
 * @Date: 2022/3/5
 */
@Table(name = "record")
public class Record {
    @Id
    private Integer did;
    private String name;
    private Integer count;
    private String time;

    @Override
    public String toString() {
        return "RecordService{" +
                "did=" + did +
                ", name='" + name + '\'' +
                ", count=" + count +
                ", time='" + time + '\'' +
                '}';
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
