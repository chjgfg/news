package org.vector.service;

import java.util.List;

import org.vector.domain.Admin;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

public interface AdminService {

	Admin findOne(String name, Integer pass);

	List<Admin> getAllUsers(QueryWrapper<Admin> wrapper);

}
