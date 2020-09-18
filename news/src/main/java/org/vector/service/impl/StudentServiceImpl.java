package org.vector.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vector.domain.Student;
import org.vector.mapper.StudentMapper;
import org.vector.service.StudentService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentMapper studentMapper;

	public Student findOne(int id) {
		return studentMapper.selectById(id);
	}

	@Override
	public List<Student> getAllUsers(QueryWrapper<Student> wrapper) {
		return studentMapper.selectList(null);
	}

	@Override
	public Student findOne(String name, Integer pass) {
		QueryWrapper<Student> qw = new QueryWrapper<>();
		qw.eq("s_name", name).eq("s_password", pass);
		return studentMapper.selectOne(qw);
	}

	@Override
	public int updateOne(Student student) {
		return studentMapper.updateById(student);
	}

	@Override
	public int deleteOne(int id) {
		return studentMapper.deleteById(id);
	}

	@Override
	public int saveOne(Student student) {
		return studentMapper.insert(student);
	}

}
