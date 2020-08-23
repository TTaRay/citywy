package com.citywy.entity;

import java.util.Date;

public class TLink {
    private Long id;

    private Integer type;

    private String title;

    private String logo;

    private String url;

    private String email;

    private Long eAid;

    private Date eSave;

    private Date eChg;

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
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
}