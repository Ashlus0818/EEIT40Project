package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumreportRepository;

import com.eeit40.springbootproject.model.Forumreport;

@Service
public class ForumreportService {

	@Autowired
	private ForumreportRepository forumreportDao;

	public void insertReport(Forumreport report) {
		forumreportDao.save(report);
	}

	public Forumreport getreportById(Integer report) {
		Optional<Forumreport> option = forumreportDao.findById(report);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteByreportId(Integer reportid) {
		forumreportDao.deleteById(reportid);
	}

	public List<Forumreport> findAllreport() {
		return forumreportDao.findAll();
	}

	public Forumreport getLastreport() {
		return forumreportDao.findFirstByOrderByDateDesc();
	}

}
