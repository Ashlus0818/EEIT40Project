package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumreportRepository;
import com.eeit40.springbootproject.model.ForumReply;
import com.eeit40.springbootproject.model.ForumReport;

@Service
public class ForumReportService {

	@Autowired
	private ForumreportRepository forumreportDao;

	public void insertReport(ForumReport report) {
		forumreportDao.save(report);
	}

	public ForumReport getreportById(Integer report) {
		Optional<ForumReport> option = forumreportDao.findById(report);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteByreportId(Integer reportid) {
		forumreportDao.deleteById(reportid);
	}

	public List<ForumReport> findAllreport() {
		return forumreportDao.findAll();
	}

	public ForumReport getLastreport() {
		return forumreportDao.findFirstByOrderByDateDesc();
	}

	public List<ForumReport> getreplyBypostID(Integer postID) {
		List<ForumReport> list1 = forumreportDao.findAllByPostID(postID);
		return list1;
	}
}
