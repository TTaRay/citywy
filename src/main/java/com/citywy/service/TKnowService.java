package com.citywy.service;

import java.util.List;

import com.citywy.common.PageHelper;
import com.citywy.entity.TComment;
import com.citywy.entity.TKnow;

public interface TKnowService {
	/**
     * 查询所有Content并分页
     * @param content
     * @param pageNum
     * @param pageSize
     * @return
     */
    PageHelper.Page<TKnow> findAll(TKnow content, Integer pageNum, Integer pageSize);
    PageHelper.Page<TKnow> findAll(TKnow content, TComment comment, Integer pageNum, Integer pageSize);
    PageHelper.Page<TKnow> findAllByUpvote(TKnow content, Integer pageNum, Integer pageSize);
    /**
     * 添加知识文章
     * @param content
     */
    void addContent(TKnow content);
    /**
     * 根据用户ID查询文章
     * @param uid 用户ID
     * @return
     */
    List<TKnow> findByUserId(long uid);
    /**
     * 查询所有文章
     * @return
     */
    List<TKnow> findAll();

    /**
     * 根据文章id查找文章
     * @param id
     * @return
     */
    TKnow findById(long id);
    /**
     * 根据文章id更新文章
     * @param content
     * @return
     */
    void updateById(TKnow content);
    
}
