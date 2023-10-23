package springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.pojo.StudentPOJO;
import springmvc.service.StudentService;

@Controller

public class StudentController {

	@Autowired
	private StudentService service;

	@RequestMapping("/signup") 
	public String showform(Model m) { 

		return "signUp";

	}

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String processForm(@RequestParam String email, @RequestParam String userName, @RequestParam String address,
			Model model) {

		StudentPOJO user = service.addUser(email, userName, address);

		model.addAttribute("user", user);
		model.addAttribute("msg", "Data Inserted Succesfully.....");
		return "signUpSuccess";

	}

	@RequestMapping("/search")
	public String searchData() {
		System.out.println("Search data....");
		return "search";

	}

	@RequestMapping(path = "/searchdata", method = RequestMethod.POST)
	public String getData(@RequestParam int id, Model model) {
		StudentPOJO user = service.searchUser(id);
		if (user != null) {
			model.addAttribute("user1", user);
			
			return "result";
		}

		model.addAttribute("msg", "Data Does Not Exist");

		return "result";

	}

	@RequestMapping("/searchall")
	public String searchAllData() {
		System.out.println("Search All data....");
		return "searchAll";
	}

	@RequestMapping(path = "/searchAllData", method = RequestMethod.POST)
	public String searchAll(@RequestParam String data, Model model) {
		List<StudentPOJO> users = service.allUser();
		model.addAttribute("user1", users);
		System.out.println(users);
		return "allResult";

	}

	@RequestMapping("/removeData")
	public String removeData() {
		System.out.println("Data Removed....");
		return "remove";
	}

	@RequestMapping(path = "/deleteData", method = RequestMethod.POST)
	public String deleteData(@RequestParam("ID") int id, Model model) {
		StudentPOJO user = service.removeData(id);
		if (user != null) {
			model.addAttribute("id1", user);
			return "removeResult";
		}
		model.addAttribute("msg", "Data Does Not Exist");

		return "removeResult";

	}
	
	
}
