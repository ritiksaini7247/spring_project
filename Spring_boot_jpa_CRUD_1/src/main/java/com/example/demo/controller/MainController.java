package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Person;
import com.example.demo.repository.PersonRepository;

@Controller
public class MainController {

	@Autowired
	private PersonRepository personRepository;

	/* Index Method */
	@RequestMapping("/")
	public String index() {
		return "index";
	}

	/* Add Method */
	@GetMapping("add")
	public String add() {
		return "add";
	}

	/* Add Process Method */
	@PostMapping("addProcess")
	public String addProcess(@ModelAttribute Person person, HttpSession httpSession) {
		personRepository.save(person);
		httpSession.setAttribute("msg", "User Add Successfully...");
		return "add";
	}

	@GetMapping("findAll")
	public String findAll(HttpSession httpSession) {
		List<Person> persons = personRepository.findAll();
		httpSession.setAttribute("persons", persons);
		return "findAll";
	}

	@GetMapping("/updateUser/{id}")
	public String updateUser(@PathVariable("id") Integer id, Model model, HttpSession session) {
		session.setAttribute("msg", null);
		Optional<Person> findById = personRepository.findById(id);
		Person person = findById.get();
		model.addAttribute("person", person);
		return "update";
	}

	/* Update Process Method */
	@GetMapping("updateProcess")
	public String updateProcess(@ModelAttribute Person person, HttpSession httpSession) {
		System.out.println(person);
		httpSession.setAttribute("msg", "User Update Successfully...");
		return "index";
	}

}
