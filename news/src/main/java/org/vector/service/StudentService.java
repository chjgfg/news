package org.vector.service;

import java.util.List;

import org.vector.domain.Student;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

public interface StudentService {

	Student findOne(int id);

	List<Student> getAllUsers(QueryWrapper<Student> wrapper);

	Student findOne(String name,Integer pass);

	int saveOne(Student student);
	
	int updateOne(Student student);
	
	int deleteOne(int id);
	
	
}
