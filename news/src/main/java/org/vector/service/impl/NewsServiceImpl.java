package org.vector.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vector.domain.News;
import org.vector.mapper.NewsMapper;
import org.vector.service.NewsService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper newsMapper;

	@Override
	public News findOne(int id) {
		return newsMapper.selectById(id);
	}

	@Override
	public List<News> getAllNews(QueryWrapper<News> wrapper) {
		return newsMapper.selectList(wrapper);
	}

	@Override
	public int saveOne(News news) {
//		System.out.println(news);
		News n = new News();
		n.setnTitle(news.getnTitle());
		n.setnTime(new Date());
		n.setnFrom(news.getnFrom());
		n.setnContext(news.getnContext());
		n.setnEdit(news.getnEdit());
		n.setNcId(news.getNcId());
		return newsMapper.insert(n);
	}

	@Override
	public int updateOne(News news) {
		QueryWrapper<News> qw = new QueryWrapper<>();
		qw.eq("n_id", news.getnId());
		News n = new News();
		n.setnId(news.getnId());
		n.setnTitle(news.getnTitle());
		n.setnFrom(news.getnFrom());
		n.setnContext(news.getnContext());
		n.setnTime(new Date());
		n.setNcId(news.getNcId());
		n.setnEdit(news.getnEdit());
		return newsMapper.update(n, qw);
	}

	@Override
	public int deleteOne(int id) {
		return newsMapper.deleteById(id);
	}

	@Override
	public List<News> findList(int id) {
		QueryWrapper<News> qw = new QueryWrapper<>();
		qw.eq("n_c_id", id);// 数据库字段,不是实体类字段
		return newsMapper.selectList(qw);
	}

	@Override
	public int count(int id) {
		QueryWrapper<News> qw = new QueryWrapper<>();
		qw.eq("n_c_id", id);// 数据库字段,不是实体类字段
		return newsMapper.selectCount(qw);
	}

}
