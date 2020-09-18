package org.vector.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.vector.domain.News;
import org.vector.service.NewsService;
import org.vector.utils.Email;

@RestController
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService newsService;

	@PostMapping("/insertOne")
	public int insertOne(@RequestBody News news) {
		return newsService.saveOne(news);
	}

	@GetMapping("/findList/{id}")
	public List<News> findList(@PathVariable("id") int id) {
		return newsService.findList(id);
	}

	@GetMapping("/findOne/{id}")
	public News findOne(@PathVariable("id") int id) {
		return newsService.findOne(id);
	}

	@PutMapping("/updateOne")
	public int updateOne(@RequestBody News news) {
//		System.out.println(news);
		return newsService.updateOne(news);
	}
	
	@DeleteMapping("/deleteOne/{id}")
	public int deleteOne(@PathVariable("id") int id) {
		return newsService.deleteOne(id);
	}

	@GetMapping("/count/{id}")
	public int count(@PathVariable("id") int id) {
		return newsService.count(id);
	}

	@PostMapping("/email/{email}/{atext}/{atextarea}")
	public int email(@PathVariable("email") String email, @PathVariable("atext") String atext,@PathVariable("atextarea") String atextarea) {
		return Email.sendEmail(email, atext, atextarea);
	}
	

}
