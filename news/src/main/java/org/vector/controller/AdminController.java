package org.vector.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.vector.domain.Admin;
import org.vector.service.AdminService;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/findOne/{name}/{pass}")
	public Admin findOne(@PathVariable("name") String name, @PathVariable("pass") Integer pass,
			HttpServletRequest rep) {
		try {
			Admin findOne = adminService.findOne(name, pass);
			if (findOne != null) {
				rep.getSession().setAttribute("user", findOne);
				return findOne;
			} else {
				Admin find = new Admin();
				find.setaId(-1);
				return find;
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;
	}

	@DeleteMapping("/deleteOne")
	public int deleteOne(HttpServletRequest rep) {
		try {
			rep.getSession().removeAttribute("user");
			return 1;
		} catch (Exception e) {
			e.getStackTrace();
		}
		return 0;
	}

}
