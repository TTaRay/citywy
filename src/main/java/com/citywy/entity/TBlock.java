package com.citywy.entity;

import java.util.Date;

public class TBlock {
    private Long id;

    private String name;

    private String code;

    private Integer display;

    private String reports;

    private String sName;

    private String sUrl;

    private Boolean eLogo;

    private Long eAid;

    private Date eSave;

    private Date eChg;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public Integer getDisplay() {
        return display;
    }

    public void setDisplay(Integer display) {
        this.display = display;
    }

    public String getReports() {
        return reports;
    }

    public void setReports(String reports) {
        this.reports = reports == null ? null : reports.trim();
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName == null ? null : sName.trim();
    }

    public String getsUrl() {
        return sUrl;
    }

    public void setsUrl(String sUrl) {
        this.sUrl = sUrl == null ? null : sUrl.trim();
    }

    public Boolean geteLogo() {
        return eLogo;
    }

    public void seteLogo(Boolean eLogo) {
        this.eLogo = eLogo;
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