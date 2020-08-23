package com.citywy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citywy.dao.TCommentMapper;
import com.citywy.entity.TComment;
import com.citywy.service.TCommentService;

@Service
public class TCommentServiceImpl implements TCommentService {
	@Autowired
	private TCommentMapper tCommentMapper;
	
	@Override
	public int add(TComment comment) {
		return tCommentMapper.insert(comment);
	}

	@Override
	public void update(TComment comment) {
		//updateByPrimaryKey对你注入的字段全部更新
		tCommentMapper.updateByPrimaryKey(comment);
	}

	@Override
	public List<TComment> findAll(Long tid) {
		TComment comment=new TComment();
		comment.seteTid(tid);
		return tCommentMapper.select(comment);
	}

	@Override
	public TComment findById(Long id) {
		TComment comment=new TComment();
		comment.setId(id);
		return tCommentMapper.selectOne(comment);
	}

	@Override
	public void deleteById(Long id) {
		TComment comment=new TComment();
		comment.setId(id);
		tCommentMapper.deleteByPrimaryKey(comment);
	}

}
