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
import org.vector.domain.Category;
import org.vector.domain.News;
import org.vector.service.CategoryService;

@RestController
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/findOne/{id}")
	public Category findOne(@PathVariable("id") int id) {
		return categoryService.findOne(id);
	}

	@GetMapping("/findAll")
	public List<Category> findAll() {
		return categoryService.getAllCategory(null);
	}

	@PutMapping("/updateOne")
	public int updateOne(@RequestBody Category category) {
		return categoryService.updateOne(category);
	}

	@PostMapping("/saveOne/{name}/{content}")
	public int saveOne(@PathVariable("name") String name, @PathVariable("content") String content) {
		return categoryService.saveOne(name, content);
	}

	@DeleteMapping("/deleteOne/{id}")
	public int deleteOne(@PathVariable("id") int id) {
		return categoryService.deleteOne(id);
	}

	@GetMapping("/findLike/{name}")
	public List<News> findLike(@PathVariable("name") String name) {
		return categoryService.findOneLike(name);
	}

	@GetMapping("/findOneByName/{name}")
	public Category findOne(@PathVariable("name") String name) {
		return categoryService.findOne(name);
	}

}
