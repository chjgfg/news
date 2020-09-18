package org.vector.service;

import java.util.List;

import org.vector.domain.Category;
import org.vector.domain.News;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

public interface CategoryService {

	Category findOne(int id);

	List<Category> getAllCategory(QueryWrapper<Category> wrapper);

	int updateOne(Category category);
	
	int saveOne(String name,String context);
	
	int deleteOne(int id);
	
	List<News> findOneLike(String name);
	
	Category findOne(String name);
}
