package com.citywy.service;

import java.util.List;

import com.citywy.entity.TComment;


public interface TCommentService {
	/**
     * 添加评论
     * @param comment
     * @return
     */
   int add(TComment comment);

    /**
     * 更新评论
     * @param comment
     */
   	void update(TComment comment);

    /**
     * 根据文章id查询所有评论
     * @return
     */
   	List<TComment> findAll(Long content_id);

    /**
     * 根据id查询评论
     * @param id
     * @return
     */
   	TComment findById(Long id);

    /**
     * 根据id删除评论
     * @param id
     */
    void deleteById(Long id);
}
