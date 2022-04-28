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

import com.eeit40.springbootproject.dao.ReservationStoreRepository;
import com.eeit40.springbootproject.model.ReservationStore;

@Service
public class ReservationStoreService {

	@Autowired
	private ReservationStoreRepository ReservationStoreDao;

	// store showALL + PageController(showAll)
	public Page<ReservationStore> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 10, Sort.Direction.ASC, "storeId");
		Page<ReservationStore> page = ReservationStoreDao.findAll(pgb);
		// List<ReservationStore> list = page.getContent();

		return page;

	}

	//根據id找整筆資料 from ReservationStoreController
	public Optional<ReservationStore> findById(Integer storeId) {
		Optional<ReservationStore> responseReS = ReservationStoreDao.findById(storeId);

		if (responseReS.isPresent()) {
			return responseReS;
		}
		return null;
		// 因為參數是從form表單來的,要用form表單的參數就要用(@RequestParam)==(HttpServletRequest
		// request)的request.getAttribute(xxx[form的name])
	}

//not yet
	//修改資料 from ReservationStoreController		
		public ReservationStore insertAStore(@RequestBody ReservationStore reS) {
			ReservationStore responseReS = ReservationStoreDao.save(reS);

			return responseReS;
			// (@RequestBody ReservationStore reS)要怎麼丟?-->ajax:做一個java物件(ReservationStore
			// reS//key,value形式)->tostring成json格式

		}

	
	
	
}
