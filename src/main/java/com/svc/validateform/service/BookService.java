package com.svc.validateform.service;

import com.svc.validateform.entity.Book;

public interface BookService {
	
	Iterable<Book> getBookAll();

	Book save(Book book);
}
