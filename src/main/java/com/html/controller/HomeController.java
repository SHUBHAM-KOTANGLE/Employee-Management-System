package com.html.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.html.dao.PersonDao;
import com.html.model.Person;

@Controller
public class HomeController {
	
	@Autowired
	PersonDao personDao;

	@RequestMapping("/")
	public String home() {
		return "index";
		
	}
	
	@RequestMapping("/loginpage")
	public String loginpage(){
		return "login";
		
	}
	
	@RequestMapping("/logedin")
	public String logedin(@RequestParam("email")String mail,
						  @RequestParam("password")String pass,
						  HttpSession session) {
		
		Person person = personDao.loginValue(mail, pass);
		if(person!=null) {
			session.setAttribute("loginsuccess", person);
			return "welcome";
		}
		
		return "login";
		
		
		
	}
	@RequestMapping("/table")
	public String table( Model m) {
		
		
		List<Person> person = personDao.loadAllPerson();
		m.addAttribute("person", person);
		return "table";
		
	}
	
	@RequestMapping("/register")
	public String register() {
		
		return "register";
		
	}
	@RequestMapping("/registed")
	public String registed(@ModelAttribute Person person) {
		personDao.save(person);	
		return "register";
		
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id")int id) {
		personDao.delete(id);
		return "redirect:/table";
		
	}
	
	@RequestMapping("/update/{id}")
	public String update(@PathVariable("id")int pid,Model model) {		
		Person person = personDao.getsinglePerson(pid);
		model.addAttribute("person", person);	
		return "update";
		
	}
	@RequestMapping("/updated")
	public String updated(Person person) {
		personDao.Update(person);
		return "redirect:/table";
		
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginsuccess");
		
		return "login";
		
	}

	
}
