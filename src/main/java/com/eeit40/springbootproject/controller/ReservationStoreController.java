package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ReservationStoreRepository;
import com.eeit40.springbootproject.model.ReservationMessageTest;
import com.eeit40.springbootproject.model.ReservationStore;
import com.eeit40.springbootproject.service.ReservationStoreService;

@Controller
public class ReservationStoreController {

//此class範例在老師3/30下午錄影裡
	//重要!!Controller應該呼叫service再呼叫dao,這邊是省略service寫法  //正規去看各messageTest的寫法
	// save動作--->有dao後才可以做下面new DB欄位裡的物件
	@Autowired
	private ReservationStoreRepository dao;

	// insert店家資料(僅限一筆)
	//使用crudRepository的save方法
//	@ResponseBody // 想回傳(ReservationStore物件)序列化後的Json格式 //自動將傳回的物件轉換為JSON格式字串
//	@PostMapping(value = "ReservationStore/insert") // insert用post
//	public ReservationStore insertReservationStore() {
//		// ReservationStore(200,"2022-04-15","修改時間","地址","傳真","店家名","營業時間","電話");
//		ReservationStore reS = new ReservationStore(100, "店家名", "電話", "地址", "傳真", "營業時間", "2022-04-15", "修改時間"); // 要按照bean的建立順序去鍵入欄位資訊
//		ReservationStore responseReS = dao.save(reS);
//
//		return responseReS;
//		// 可以先用postman測試->路徑:http://localhost:8080/myapp/ReservationStore/insert
//		// dao.save會回傳 ReservationStore物件,
//		// ReservationStore再傳回去時,因為有@ResponseBody,所以會把Java物件轉成Json ->這動作叫序列化
//	}

	
	//老師範例改搜store的
	// insert店家資料,ex.從postman鍵入資料
	// @RequestBody-->丟Json進來bean裡面-->反序列化成java物件
	@ResponseBody
	@PostMapping(value = "ReservationStore/insert2")
	public ReservationStore insertReservationStore(@RequestBody ReservationStore reS) {
		ReservationStore responseReS = dao.save(reS);

		return responseReS;
		// (@RequestBody ReservationStore reS)要怎麼丟?-->ajax:做一個java物件(ReservationStore
		// reS//key,value形式)->tostring成json格式

	}

	//老師範例改搜store的
	// insert多筆資料
	@ResponseBody
	@PostMapping(value = "ReservationStore/insertAll")
	public List<ReservationStore> insertReservationStore(@RequestBody List<ReservationStore> reS) {
		List<ReservationStore> responseList = dao.saveAll(reS);

		return responseList;
		// list形式資料，舉postman輸入方式就是再加上[],中括弧裡再包{}就是list

	}

	//老師範例改搜store的
	// 根據id搜尋
	@ResponseBody
	@GetMapping(value = "ReservationStore/get/{storeId}")
	public ReservationStore getStoreById(@PathVariable Integer storeId) {
		Optional<ReservationStore> responseReS = dao.findById(storeId);

		if (responseReS.isPresent()) {
			return responseReS.get();
		}

		return null;
		// 因為從路徑搜尋,使用@PathVariable
		// 回傳Optional<xxx>泛型,因為它希望把null切開,null可以是沒有也可以是空,它希望能分清楚是哪種
		// isPresent()是搭配optional,表示有拿到東西-->回傳responseReS(要加get方法),沒有拿到東西就回傳null
		//路徑裡的和@PathVariable和findById 三個storeId名稱必須都是一樣的(都是table欄位名稱[or bean的?反正entity取名時都設一樣])
	}

	
	
	//老師範例改store用的  postman要填key value
	@ResponseBody
	@GetMapping(value = "back/ReservationStore/get")
	public Optional<ReservationStore> getStoreById1(@RequestParam Integer storeId) {
		Optional<ReservationStore> responseReS = dao.findById(storeId);

	if (responseReS.isPresent()) {
		return responseReS;
	}
	return null;	
	}
		
		
	// 根據id刪除資料 自測成功
	@ResponseBody
	@GetMapping(value = "ReservationStore/del")
	public void delStoreById(@RequestParam Integer storeId) {
		dao.deleteById(storeId);
	}

	//老師範例改搜store的
	// Page物件 springboot講義P91 重播3/30下午2:09:00
	@ResponseBody
	@GetMapping(value = "ReservationStore/page/{pageNumber}")
	public List<ReservationStore> findByPage(@PathVariable Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 5, Sort.Direction.ASC, "storeId");
		Page<ReservationStore> page = dao.findAll(pgb);
		List<ReservationStore> list = page.getContent();
		return list;
	}

	//老師範例改搜store的
	//@Query HQL查詢
	@ResponseBody
	@GetMapping(value = "ReservationStore/findByName")
	public List<ReservationStore> findByName(@RequestParam String storeName) {
		return dao.findStoreByNameHQL(storeName);

//findStoreByName要跟ReservationStoreRepository裡的findStoreByName方法一樣
	}

	//老師範例改搜store的
	//@Query SQL查詢
	@ResponseBody
	@GetMapping(value = "ReservationStore/findByName2")
	public List<ReservationStore> findByName2(@RequestParam String storeName) {
		return dao.findStoreByNameSQL(storeName);
	}
	
//--------------以上是3/30-----------------------------------//	
	
	//老師範例改搜store的
	//@Query SQL刪除 
	@ResponseBody
	@GetMapping(value="ReservationStore/delete/{storeId}")
	public boolean deleteStore(@PathVariable Integer storeId) {
		dao.deleteStoreByIdSQL(storeId);
		return true;
	}
	//不會回傳東西,所以return true(也不用if else),錯了就會跳出去不會回傳true
	
	//老師範例改搜store的
	//使用直接透過方法名稱查詢
	//使用路徑去搜尋
	@ResponseBody
	@GetMapping(value="ReservationStore/findStoreName/{storeName}")
	public List<ReservationStore> findByStoreName(@PathVariable String storeName){
		return dao.findByStoreNameOrderByStoreId(storeName);
	}
	
	//老師範例改搜store的
	//使用直接透過方法名稱查詢
	@ResponseBody
	@GetMapping(value="ReservationStore/findstoreDepartmentNumber/{storeDepartmentNumber}")
	public List<ReservationStore> findByStoreDepartmentNumber(@PathVariable Integer storeDepartmentNumber){
		return dao.findByStoreDepartmentNumberOrderByStoreNameDesc(storeDepartmentNumber);
	}
	
	//之後教留言版功能的專案是3/31 09的影片 40:00時開始
	

	
	//實體店面轉個別店面檢視
	@ResponseBody
	@GetMapping(value="ReservationStore/findstore")
	public List<ReservationStore> findByStore(@PathVariable Integer storeDepartmentNumber){
		return dao.findByStoreDepartmentNumberOrderByStoreNameDesc(storeDepartmentNumber);
	}
	
	
	//廢棄了
	//show-a-store formform表單
//	@GetMapping(value="/backStage/Re-show-a-store")
//	public String showAstore(Model m) {
//		ReservationStore ReS = new ReservationStore();
//		m.addAttribute("storeOne",ReS);
//		return "Re-show-a-store";
//	}

	@Autowired
	private ReservationStoreService service;
	
	
	
	@GetMapping("/backStage/Re-show-a-store")
	public String ReShowAstore() {
		return "Re-show-a-store";
	}
	
	
	    //測試用
		// 前端送form表單時,如何get(搜尋)
        @ResponseBody
		@GetMapping(value = "backstage/ReservationStore/get")
		public Optional<ReservationStore> getStoreById2(@RequestParam("storeId") Integer storeId) {
				   // System.out.println(storeId);
				    Optional<ReservationStore>	opionRes = service.findById(storeId);
				   // System.out.println(opionRes);
				    return opionRes;				
		}

        //ReservationStore --> Re-show-a-stores
        //http://localhost:8080/myapp/backstage/ReservationStore/getstoreId?storeIDnumberView=1
        @ResponseBody
  		@GetMapping(value = "backstage/ReservationStore/getstoreId")
  		public Optional<ReservationStore> getStoreById3(@RequestParam("storeIDnumberView") Integer storeId) {
  				   // System.out.println(storeId);
  				    Optional<ReservationStore>	opionRes = service.findById(storeId);
  				   // System.out.println(opionRes);
  				    return opionRes;				
  		}
        //抓到jsp的參數 name:storeIDnumberView之後 就會抓到它(name)的value也就是storeId
        //postman key value測試
        
        
        
     
     
        //@ResponseBody
  		@GetMapping(value = "backstage/ReservationStore/getstoreId1")
  		public ModelAndView getStoreById4(ModelAndView mav,@RequestParam("storeIDnumberView") Integer storeId) {
  			 System.out.println("TEST");   
  			Optional<ReservationStore> opionRes = service.findById(storeId);
  			mav.getModel().put("foreachAstore", opionRes);
  			mav.setViewName("Re-show-a-store");	
  		    System.out.println(opionRes);
  		    return mav;				
  		}
       
        
//  		public ModelAndView viewMessages(ModelAndView mav, @RequestParam(name="p", defaultValue = "1") Integer pageNumber) {
//  			Page<ReservationMessageTest> page = messageService.findByPage(pageNumber);
//  			
//  			mav.getModel().put("page", page);
//  			mav.setViewName("viewMessages");
//  			
//  			return mav;
//  		}
        
        
        
		
//		@GetMapping(value = "backstage/ReservationStore/get1")
//		public Optional<ReservationStore> getStoreById3(@RequestParam("storeIDnumberDel") Integer storeId) {
//				System.out.println(storeId);
//				Optional<ReservationStore> responseReS = dao.findById(storeId);
//
//			if (responseReS.isPresent()) {
//				return responseReS;
//			}
//			return null;
//			// 因為參數是從form表單來的,要用form表單的參數就要用(@RequestParam)==(HttpServletRequest
//			// request)的request.getAttribute(xxx[form的name])
//		}
	
	
	
	
	
	
	
	
}

