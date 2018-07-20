package com.cww.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class Note {
    private Integer id;
    private Date date;
    private Integer order;
    private Integer themes;
    private Integer comsumerId;
    private String desc;

    public Integer getComsumerId() {
        return comsumerId;
    }

    public void setComsumerId(Integer comsumerId) {
        this.comsumerId = comsumerId;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Integer getThemes() {
        return themes;
    }

    public void setThemes(Integer themes) {
        this.themes = themes;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Note(Integer id, Date date, Integer order, Integer themes, Integer comsumerId, String desc) {
        super();
        this.id = id;
        this.date = date;
        this.order = order;
        this.themes = themes;
        this.comsumerId = comsumerId;
        this.desc = desc;
    }

    public Note() {
        super();
    }
}
