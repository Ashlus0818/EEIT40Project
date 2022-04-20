package com.eeit40.springbootproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eeit40.springbootproject.dao.ReservationStoreRepository;
import com.eeit40.springbootproject.model.ReservationStore;


//此class範例在老師3/30下午錄影裡
@Controller
public class ReservationStoreController {

	// save動作--->有dao後才可以做下面new DB欄位裡的物件
	@Autowired
	private ReservationStoreRepository dao;

	// inset店家資料(僅限一筆)
	@ResponseBody // 想回傳(ReservationStore物件)序列化後的Json格式 //自動將傳回的物件轉換為JSON格式字串
	@PostMapping(value = "ReservationStore/insert") // insert用post
	public ReservationStore insertReservationStore() {
		// ReservationStore(200,"2022-04-15","修改時間","地址","傳真","店家名","營業時間","電話");
		ReservationStore reS = new ReservationStore(100, "店家名", "電話", "地址", "傳真", "營業時間", "2022-04-15", "修改時間"); // 要按照bean的建立順序去鍵入欄位資訊
		ReservationStore responseReS = dao.save(reS);

		return responseReS;
		// 可以先用postman測試->路徑:http://localhost:8080/myapp/ReservationStore/insert
		// dao.save會回傳 ReservationStore物件,
		// ReservationStore再傳回去時,因為有@ResponseBody,所以會把Java物件轉成Json ->這動作叫序列化
	}

	//insert店家資料,ex.從postman鍵入資料
	//@RequestBody-->丟Json進來bean裡面-->反序列化成java物件
	@ResponseBody
	@PostMapping(value = "ReservationStore/insert2")
	public ReservationStore insertReservationStore(@RequestBody ReservationStore reS) {
		ReservationStore responseReS = dao.save(reS);

		return responseReS;
	//(@RequestBody ReservationStore reS)要怎麼丟?-->ajax:做一個java物件(ReservationStore reS//key,value形式)->tostring成json格式

	}

	//insert多筆資料
	@ResponseBody
	@PostMapping(value = "ReservationStore/insertAll")
	public List<ReservationStore> insertReservationStore(@RequestBody List<ReservationStore> reS) {
		List<ReservationStore> responseList = dao.saveAll(reS);

		return responseList;
	//list形式資料，舉postman輸入方式就是再加上[],中括弧裡再包{}就是list	
		
	}
	
	
}

//看到1:27:00
