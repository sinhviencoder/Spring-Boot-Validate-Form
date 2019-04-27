package com.svc.validateform.service.implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svc.validateform.entity.Author;
import com.svc.validateform.service.AuthorService;
import com.svc.validateform.service.repository.AuthorRepository;

@Service
public class AuthorServiceImp implements AuthorService {

	@Autowired
	AuthorRepository authorRepository;
	
	@Override
	public Author save(Author author) {
		return authorRepository.save(author);
	}

	@Override
	public Iterable<Author> getAuthorAll() {
		return authorRepository.findAll();
	}

}
