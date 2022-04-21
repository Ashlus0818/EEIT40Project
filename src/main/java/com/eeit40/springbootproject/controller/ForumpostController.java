package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.eeit40.springbootproject.dao.ForumpostRepository;
import com.eeit40.springbootproject.model.Forumpost;

@RestController
public class ForumpostController {
	
	@Autowired
	private ForumpostRepository dao;
	
	@PostMapping(value = "/forumpost/insert")
	public Forumpost insertPost(@RequestBody Forumpost post) {
		Forumpost resPost = dao.save(post);
		
		return resPost;
	}
	
	@GetMapping(value = "/forumpost/get/{postid}")
	public Forumpost getPostByID(@PathVariable Integer postid) {
		Optional<Forumpost> responsePost = dao.findById(postid);
		
		if(responsePost.isPresent()) {
			return responsePost.get();
		}
		
		return null;
	}
	
	@GetMapping(value = "/forumpost/get")
	public Forumpost getPostByID2(@RequestParam Integer postid) {
		Optional<Forumpost> responsePost = dao.findById(postid);
		
		if(responsePost.isPresent()) {
			return responsePost.get();
		}
		
		return null;
	}
	
	@GetMapping(value = "/forumpost/page/{pageNumber}")
	public List<Forumpost> findByPage(@PathVariable Integer pageNumber)
	{
		System.out.print(pageNumber);
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<Forumpost> page = dao.findAll(pgb);
		List<Forumpost> list = page.getContent();
		return list;		
	}
	
		
}
