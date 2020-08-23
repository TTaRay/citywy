package com.citywy.entity;

public class TMenu {
    private Long id;

    private String name;

    private String chname;

    private String alias;

    private String code;

    private Integer level;

    private String scope;

    private String note;

    private String eWord;

    private String eData;

    private Long ePid;

    private Boolean eState;

    private Integer eNo;

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

    public String getChname() {
        return chname;
    }

    public void setChname(String chname) {
        this.chname = chname == null ? null : chname.trim();
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias == null ? null : alias.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope == null ? null : scope.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String geteWord() {
        return eWord;
    }

    public void seteWord(String eWord) {
        this.eWord = eWord == null ? null : eWord.trim();
    }

    public String geteData() {
        return eData;
    }

    public void seteData(String eData) {
        this.eData = eData == null ? null : eData.trim();
    }

    public Long getePid() {
        return ePid;
    }

    public void setePid(Long ePid) {
        this.ePid = ePid;
    }

    public Boolean geteState() {
        return eState;
    }

    public void seteState(Boolean eState) {
        this.eState = eState;
    }

    public Integer geteNo() {
        return eNo;
    }

    public void seteNo(Integer eNo) {
        this.eNo = eNo;
    }
}