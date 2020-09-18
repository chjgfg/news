package org.vector.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vector.domain.Category;
import org.vector.domain.News;
import org.vector.mapper.CategoryMapper;
import org.vector.mapper.NewsMapper;
import org.vector.service.CategoryService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper categoryMapper;

	@Autowired
	private NewsMapper newsMapper;

	
	@Override
	public Category findOne(int id) {
		return categoryMapper.selectById(id);
	}

	@Override
	public List<Category> getAllCategory(QueryWrapper<Category> wrapper) {
		return categoryMapper.selectList(wrapper);
	}

	@Override
	public int updateOne(Category category) {
		return categoryMapper.updateById(category);
	}

	@Override
	public int saveOne(String name, String context) {
		Category category = new Category();
		category.setcName(name);
		category.setcContext(context);
		return categoryMapper.insert(category);
	}

	@Override
	public int deleteOne(int id) {
		return categoryMapper.deleteById(id);
	}

	@Override
	public List<News> findOneLike(String name) {
		QueryWrapper< Category> qw = new QueryWrapper<>();
		qw.like("c_name", name);
		Category selectOne = categoryMapper.selectOne(qw);
		QueryWrapper< News> qw2 = new QueryWrapper<>();
		qw2.like("n_c_id", selectOne.getcId());
		return newsMapper.selectList(qw2);
	}

	@Override
	public Category findOne(String name) {
		QueryWrapper<Category> qw = new QueryWrapper<>();
		qw.eq("c_name", name);
		return categoryMapper.selectOne(qw);
	}

}
