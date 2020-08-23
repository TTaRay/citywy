package com.citywy.entity;

import java.util.Date;

public class TComment {
    private Long id;

    private Integer type;

    private String datas;

    private String pics;

    private Integer goods;

    private Integer bads;

    private Boolean accept;

    private Long eTid;

    private Long ePid;

    private Long eGid;

    private Integer eReply;

    private Long eUid;

    private Long eAid;

    private Integer eState;

    private String eNote;

    private Date eSave;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getDatas() {
        return datas;
    }

    public void setDatas(String datas) {
        this.datas = datas == null ? null : datas.trim();
    }

    public String getPics() {
        return pics;
    }

    public void setPics(String pics) {
        this.pics = pics == null ? null : pics.trim();
    }

    public Integer getGoods() {
        return goods;
    }

    public void setGoods(Integer goods) {
        this.goods = goods;
    }

    public Integer getBads() {
        return bads;
    }

    public void setBads(Integer bads) {
        this.bads = bads;
    }

    public Boolean getAccept() {
        return accept;
    }

    public void setAccept(Boolean accept) {
        this.accept = accept;
    }

    public Long geteTid() {
        return eTid;
    }

    public void seteTid(Long eTid) {
        this.eTid = eTid;
    }

    public Long getePid() {
        return ePid;
    }

    public void setePid(Long ePid) {
        this.ePid = ePid;
    }

    public Long geteGid() {
        return eGid;
    }

    public void seteGid(Long eGid) {
        this.eGid = eGid;
    }

    public Integer geteReply() {
        return eReply;
    }

    public void seteReply(Integer eReply) {
        this.eReply = eReply;
    }

    public Long geteUid() {
        return eUid;
    }

    public void seteUid(Long eUid) {
        this.eUid = eUid;
    }

    public Long geteAid() {
        return eAid;
    }

    public void seteAid(Long eAid) {
        this.eAid = eAid;
    }

    public Integer geteState() {
        return eState;
    }

    public void seteState(Integer eState) {
        this.eState = eState;
    }

    public String geteNote() {
        return eNote;
    }

    public void seteNote(String eNote) {
        this.eNote = eNote == null ? null : eNote.trim();
    }

    public Date geteSave() {
        return eSave;
    }

    public void seteSave(Date eSave) {
        this.eSave = eSave;
    }
}