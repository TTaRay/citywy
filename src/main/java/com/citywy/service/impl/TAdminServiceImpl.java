package com.citywy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citywy.dao.TAdminMapper;
import com.citywy.entity.TAdmin;
import com.citywy.service.TAdminService;

@Service
public class TAdminServiceImpl implements TAdminService {
	@Autowired
	private TAdminMapper tAdminMapper;
	
	@Override
	public int regist(TAdmin admin) {
		return tAdminMapper.insert(admin);
	}

	@Override
	public TAdmin login(String email, String password) {
		TAdmin tadmin=new TAdmin();
		tadmin.setEmail(email);
		tadmin.setPassword(password);
		return tAdminMapper.selectOne(tadmin);
	}

	@Override
	public TAdmin findByEmail(String email) {
		TAdmin tadmin=new TAdmin();
		tadmin.setEmail(email);
		return tAdminMapper.selectOne(tadmin);
	}

	@Override
	public TAdmin findByPhone(String phone) {
		TAdmin tadmin=new TAdmin();
		tadmin.setPhone(phone);
		return tAdminMapper.selectOne(tadmin);
	}

	@Override
	public TAdmin findById(Long id) {
		TAdmin tadmin=new TAdmin();
		tadmin.setId(id);
		return tAdminMapper.selectOne(tadmin);
	}
	
	@Override
	public void deleteByID(Long id) {
		TAdmin tadmin=new TAdmin();
		tadmin.setId(id);
		tAdminMapper.delete(tadmin);
	}

	@Override
	public void update(TAdmin admin) {
		tAdminMapper.updateByPrimaryKeySelective(admin);
	}


}
