package com.citywy.entity;

import java.util.Date;

public class TNews {
    private Long id;

    private String title;

    private String logo;

    private String summary;

    private String tag;

    private Long eMenu;

    private Long eLook;

    private Long eAid;

    private Date eSave;

    private Date eChg;

    private Integer eReply;

    private String sWord;

    private String sData;

    private String source;

    private Integer state;

    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary == null ? null : summary.trim();
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag == null ? null : tag.trim();
    }

    public Long geteMenu() {
        return eMenu;
    }

    public void seteMenu(Long eMenu) {
        this.eMenu = eMenu;
    }

    public Long geteLook() {
        return eLook;
    }

    public void seteLook(Long eLook) {
        this.eLook = eLook;
    }

    public Long geteAid() {
        return eAid;
    }

    public void seteAid(Long eAid) {
        this.eAid = eAid;
    }

    public Date geteSave() {
        return eSave;
    }

    public void seteSave(Date eSave) {
        this.eSave = eSave;
    }

    public Date geteChg() {
        return eChg;
    }

    public void seteChg(Date eChg) {
        this.eChg = eChg;
    }

    public Integer geteReply() {
        return eReply;
    }

    public void seteReply(Integer eReply) {
        this.eReply = eReply;
    }

    public String getsWord() {
        return sWord;
    }

    public void setsWord(String sWord) {
        this.sWord = sWord == null ? null : sWord.trim();
    }

    public String getsData() {
        return sData;
    }

    public void setsData(String sData) {
        this.sData = sData == null ? null : sData.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}