package org.vector.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.vector.domain.Pinglun;
import org.vector.service.PinglunService;

@RestController
@RequestMapping("/ping")
public class PinglunController {

	@Autowired
	private PinglunService pinglunService;

	@PostMapping("/saveOne")
	public int saveOne(@RequestBody Pinglun pinglun) {
		return pinglunService.saveOne(pinglun);
	}

	@GetMapping("/findAll/{id}")
	public List<Pinglun> findAll(@PathVariable("id") int id) {
		return pinglunService.getAllPinglun(id);
	}
	
	@GetMapping("/findOne/{id}")
	public Pinglun findOne(@PathVariable("id") int id) {
		return pinglunService.findPointerId(id);
	}
	
	@PutMapping("/addOne/{id}")
	public int addOne(@PathVariable("id") int id) {
		return pinglunService.addPointerId(id);
	}
	
	@PutMapping("/deleteOne/{id}")
	public int deleteOne(@PathVariable("id") int id) {
		return pinglunService.deletePointerId(id);
	}

}
