package org.vector.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.vector.domain.Student;
import org.vector.service.StudentService;

@RestController
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@GetMapping("/findOneById/{id}")
	public Student findOne(@PathVariable("id") int id) {
		return studentService.findOne(id);
	}

	@GetMapping("/findAll")
	public List<Student> findAll() {
		return studentService.getAllUsers(null);
	}

	@SuppressWarnings({ "null", "finally" })
	@GetMapping("/findOne/{a}/{b}")
	public Student findOne(@PathVariable("a") String name, @PathVariable("b") Integer pass, HttpServletRequest res) {
		try {
			Student findOne = studentService.findOne(name, pass);
			System.out.println(findOne);
			if (findOne != null) {
				res.getSession().setAttribute("stu", findOne);
				return findOne;
			} else if (findOne == null) {
				Student find = new Student();
				find.setsId(-1);
				find.setsEmail("xxx@xxx.xxx");
				find.setsName("......");
				find.setsPassword(0);
				find.setsTelephone("");
				return find;
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;
	}

	@PostMapping("/saveOne/{name}/{email}/{phone}/{pass}")
	public int saveOne(@PathVariable("name") String name, @PathVariable("email") String email,
			@PathVariable("phone") String phone, @PathVariable("pass") Integer pass) {
		Student student = new Student();
		student.setsName(name);
		student.setsEmail(email);
		student.setsTelephone(phone);
		student.setsPassword(pass);
		return studentService.saveOne(student);
	}

	@PutMapping("/updateOne")
	public int updateOne(@RequestBody Student student) {
		return studentService.updateOne(student);
	}

	@DeleteMapping("/deleteOne/{id}")
	public int deleteOne(@PathVariable("id") int id) {
		return studentService.deleteOne(id);
	}
	
	@DeleteMapping("/deleteOneFromSession")
	public int deleteOneFromSession(HttpServletRequest res) {
		res.getSession().removeAttribute("stu");
		return 1;
	}

}
