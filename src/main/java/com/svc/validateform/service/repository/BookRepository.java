package com.svc.validateform.service.repository;

import org.springframework.data.repository.CrudRepository;

import com.svc.validateform.entity.Book;


public interface BookRepository extends CrudRepository<Book, Integer>{

}
