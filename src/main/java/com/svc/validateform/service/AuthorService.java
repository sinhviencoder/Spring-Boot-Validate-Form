package com.svc.validateform.service;

import com.svc.validateform.entity.Author;

public interface AuthorService {

	Author save(Author author);

	Iterable<Author> getAuthorAll();
}
