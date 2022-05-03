package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ReservationStoreRepository;
import com.eeit40.springbootproject.model.ReservationStore;

@Service
public class ReservationStoreService {

	@Autowired
	private ReservationStoreRepository ReservationStoreDao;

	// store showALL + PageController(showAll)
	public Page<ReservationStore> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 10, Sort.Direction.DESC, "storeId");
		Page<ReservationStore> page = ReservationStoreDao.findAll(pgb);
		// List<ReservationStore> list = page.getContent();

		return page;

	}

	
	//根據id找整筆資料 from ReservationStoreController
		public ReservationStore findById(Integer storeId) {
			Optional<ReservationStore> responseReS = ReservationStoreDao.findById(storeId);

			if (responseReS.isPresent()) {
				return responseReS.get();
			}
			return null;
		}
	
			
	
//	//根據id找整筆資料 from ReservationStoreController ----舊的
//	public Optional<ReservationStore> findById(Integer storeId) {
//		Optional<ReservationStore> responseReS = ReservationStoreDao.findById(storeId);
//
//		if (responseReS.isPresent()) {
//			return responseReS;
//		}
//		return null;
//	}


	//修改資料 from ReservationStoreController		
	public void insert(ReservationStore reS) {
		ReservationStoreDao.save(reS);
	}

	public void deleteById(Integer storeId) {
		ReservationStoreDao.deleteById(storeId);
	}
	
	
}
