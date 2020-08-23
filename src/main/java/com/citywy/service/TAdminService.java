package com.citywy.service;

import com.citywy.entity.TAdmin;


public interface TAdminService {
	/**
     * 用户注册
     * @param user
     * @return
     */
    int regist(TAdmin admin);

    /**
     * 用户登录
     * @param email
     * @param password
     * @return
     */
    TAdmin login(String email,String password);

    /**
     * 根据用户邮箱查询用户
     * @param email
     * @return
     */
    TAdmin findByEmail(String email);

    /**
     * 根据用户手机号查询用户
     * @param phone
     * @return
     */
    TAdmin findByPhone(String phone);

    /**
     * 根据用户id查询用户
     * @param id
     * @return
     */
    TAdmin findById(Long id);

    /**
     * 根据用户邮箱删除用户
     * @param email
     */
    void deleteByID(Long id);

    /**
     * 更新用户信息
     * @param user
     */
    void update(TAdmin admin);
}
