package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ReservationMessageTestRepository;
import com.eeit40.springbootproject.model.ReservationMessageTest;

@Service
public class ReservationMessageTestService {

	// service要dao,記得autowired->dao
	@Autowired
	private ReservationMessageTestRepository reservationMessageTestDao;

	public void insert(ReservationMessageTest messages) {
		reservationMessageTestDao.save(messages);
	}

	// 根據id查資料
	// optional用法去store的controller註釋看
	public ReservationMessageTest findById(Integer mId) {
		Optional<ReservationMessageTest> option = reservationMessageTestDao.findById(mId);

		if (option.isPresent()) {
			return option.get();
		}

		return null;

	}

	// 刪除
	public void deleteById(Integer mId) {
		reservationMessageTestDao.deleteById(mId);
	}

	// 找全部
	public List<ReservationMessageTest> findAllMessages() {
		return reservationMessageTestDao.findAll();
	}

	// 每page顯示多少筆 page物件
	public Page<ReservationMessageTest> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 3, Sort.Direction.DESC, "added");

		Page<ReservationMessageTest> page = reservationMessageTestDao.findAll(pgb);

		return page;
	}
	// (pageNumber-1, 3, Sort.Direction.DESC,
	// "added")-->從0開始,每頁三個,順序最新的最前,根據added欄位(java屬性)-->
	// 回傳Pageable物件-->根據dao裡的finaAll方法把pgb放進去-->回傳page物件-->最後return回去

	//寫在repository的自訂方法
	public ReservationMessageTest getLastest() {
		return reservationMessageTestDao.findFirstByOrderByAddedDesc();
	}
	
	
	
}
