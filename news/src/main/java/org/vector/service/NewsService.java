package org.vector.service;

import java.util.List;

import org.vector.domain.News;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

public interface NewsService {

	News findOne(int id);

	List<News> getAllNews(QueryWrapper<News> wrapper);

	int saveOne(News news);

	int updateOne(News news);

	int deleteOne(int id);

	List<News> findList(int id);
	
	int count(int id);

}
