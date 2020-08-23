package com.citywy.entity;

import java.util.Date;

public class TAdmin {
    private Long id;

    private String username;

    private String password;

    private String name;

    private Boolean sex;

    private String email;

    private String phone;

    private String qq;

    private Boolean eLogin;

    private Boolean eSpecial;

    private Date eSave;

    private String adminrules;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Boolean getSex() {
        return sex;
    }

    public void setSex(Boolean sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public Boolean geteLogin() {
        return eLogin;
    }

    public void seteLogin(Boolean eLogin) {
        this.eLogin = eLogin;
    }

    public Boolean geteSpecial() {
        return eSpecial;
    }

    public void seteSpecial(Boolean eSpecial) {
        this.eSpecial = eSpecial;
    }

    public Date geteSave() {
        return eSave;
    }

    public void seteSave(Date eSave) {
        this.eSave = eSave;
    }

    public String getAdminrules() {
        return adminrules;
    }

    public void setAdminrules(String adminrules) {
        this.adminrules = adminrules == null ? null : adminrules.trim();
    }
}