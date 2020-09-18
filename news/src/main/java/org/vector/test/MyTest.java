package org.vector.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.vector.domain.Admin;
import org.vector.domain.News;
import org.vector.mapper.AdminMapper;
import org.vector.service.NewsService;
import org.vector.service.impl.AdminServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class MyTest {

	@Autowired
	private AdminServiceImpl adminService;
	@Autowired
	private AdminMapper adminMapper;

	@Autowired
	private NewsService newsService;

	@Test
	public void time() {
		List<News> findOne = newsService.getAllNews(null);
		for (News admin : findOne) {
			System.out.println(admin.getnTime());
		}
	}
	
	
	@Test
	public void name2() {
		List<Admin> findOne = adminService.getAllUsers(null);
		for (Admin admin : findOne) {
			System.out.println(admin);
		}
	}

}
