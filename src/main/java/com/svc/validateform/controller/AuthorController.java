package com.svc.validateform.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.svc.validateform.entity.Author;
import com.svc.validateform.service.AuthorService;

@Controller
public class AuthorController {
	@Autowired
	AuthorService authorService;

	@RequestMapping(value = { "/", "/author/add" }, method = RequestMethod.GET)
	public String addAuthor(Author author) {
		return "views/form-add-author";
	}

	@RequestMapping(value = "/author/add", method = RequestMethod.POST)
	public String addAuthor(@ModelAttribute("author") @Valid Author author, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "views/form-add-author";
		}
		authorService.save(author);
		return "redirect:/author/list-author";
	}

	@RequestMapping(value = "/author/list-author", method = RequestMethod.GET)
	public String listAuthor(Model model) {
		model.addAttribute("authors", authorService.getAuthorAll());
		return "views/list-author";
	}

}
