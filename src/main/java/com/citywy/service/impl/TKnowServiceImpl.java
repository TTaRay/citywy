package com.citywy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tk.mybatis.mapper.entity.Example;

import com.citywy.common.PageHelper;
import com.citywy.common.PageHelper.Page;
import com.citywy.dao.TCommentMapper;
import com.citywy.dao.TKnowMapper;
import com.citywy.entity.TComment;
import com.citywy.entity.TKnow;
import com.citywy.service.TKnowService;

@Service
public class TKnowServiceImpl implements TKnowService{
	@Autowired
	private TKnowMapper tknowMapper;
	@Autowired
	private TCommentMapper commentMapper;
	
	@Override
	public Page<TKnow> findAll(TKnow content, Integer pageNum, Integer pageSize) {
		//分页查询
        System.out.println("第"+pageNum+"页");
        System.out.println("每页显示："+pageSize+"条");
        PageHelper.startPage(pageNum, pageSize);//开始分页
        List<TKnow> list =  tknowMapper.select( content );
        //List<TKnow> list = tknowMapper.findAllContent();
        Page endPage = PageHelper.endPage();//分页结束
//        List<TKnow> result = endPage.getResult();
        return endPage;
	}

	@Override
	public Page<TKnow> findAll(TKnow content, TComment comment, Integer pageNum, Integer pageSize) {
		//分页查询
        System.out.println("第"+pageNum+"页");
        System.out.println("每页显示："+pageSize+"条");
        PageHelper.startPage(pageNum, pageSize);//开始分页
        List<TKnow> list =  tknowMapper.select( content );

        List<TComment> comments = commentMapper.select( comment );

        Page endPage = PageHelper.endPage();//分页结束
        List<TKnow> result = endPage.getResult();
        return endPage;
	}

	@Override
	public Page<TKnow> findAllByUpvote(TKnow content, Integer pageNum, Integer pageSize) {
		Example e = new Example(TKnow.class);
        e.setOrderByClause("id DESC");
        PageHelper.startPage(pageNum, pageSize);//开始分页
        List<TKnow> list = tknowMapper.selectByExample(e);
        Page endPage = PageHelper.endPage();//分页结束
        return endPage;
	}

	@Override
	public void addContent(TKnow content) {
		tknowMapper.insert(content);
	}

	@Override
	public List<TKnow> findByUserId(long uid) {
		TKnow content=new TKnow();
		content.seteAid(uid);
		List<TKnow> list=tknowMapper.select(content);
		return list;
	}

	@Override
	public List<TKnow> findAll() {
		return tknowMapper.select(null);
	}

	@Override
	public TKnow findById(long id) {
		TKnow content=new TKnow();
		content.setId(id);
		return tknowMapper.selectOne(content);
	}

	@Override
	public void updateById(TKnow content) {
		//updateByPrimaryKeySelective会对字段进行判断再更新(如果为Null就忽略更新)，如果你只想更新某一字段，可以用这个方法。
		tknowMapper.updateByPrimaryKeySelective(content);
	}

}
