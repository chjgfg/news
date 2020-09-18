package org.vector.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vector.domain.Admin;
import org.vector.mapper.AdminMapper;
import org.vector.service.AdminService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Override
	public List<Admin> getAllUsers(QueryWrapper<Admin> wrapper) {
		return adminMapper.selectList(wrapper);
	}

	@Override
	public Admin findOne(String name, Integer pass) {
		QueryWrapper<Admin> qw = new QueryWrapper<>();
		qw.eq("a_name", name).eq("a_password", pass);
		return adminMapper.selectOne(qw);
	}

}
