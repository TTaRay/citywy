package com.citywy.entity;

import java.util.Date;

public class TAdvert {
    private Long id;

    private String word;

    private String pic;

    private String link;

    private String html;

    private String sName;

    private String sUrl;

    private String code;

    private Long state;

    private String start;

    private String end;

    private Long eAid;

    private Date eSave;

    private Date eChg;

    private Integer type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word == null ? null : word.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link == null ? null : link.trim();
    }

    public String getHtml() {
        return html;
    }

    public void setHtml(String html) {
        this.html = html == null ? null : html.trim();
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public Long getState() {
        return state;
    }

    public void setState(Long state) {
        this.state = state;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start == null ? null : start.trim();
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end == null ? null : end.trim();
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}