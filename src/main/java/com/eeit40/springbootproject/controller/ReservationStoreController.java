package com.eeit40.springbootproject.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ReservationOrderRepository;
import com.eeit40.springbootproject.dao.ReservationStoreRepository;
import com.eeit40.springbootproject.model.ReservationMessageTest;
import com.eeit40.springbootproject.model.ReservationOrder;
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
	
	

	@Autowired
	private ReservationStoreService service;
	
	
	//測試
	@GetMapping("/backStage/Re-new-a-store")
	public String ReNewAstore() {
		return "Re-new-a-store";
	}
	
	
//	    //測試用 service需是回傳optinaol物件才行用
//		// 前端送form表單時,如何get(搜尋)
//        @ResponseBody
//		@GetMapping(value = "backstage/ReservationStore/get")
//		public Optional<ReservationStore> getStoreById2(@RequestParam("storeId") Integer storeId) {
//				   // System.out.println(storeId);
//				    Optional<ReservationStore>	opionRes = service.findById(storeId);
//				   // System.out.println(opionRes);
//				    return opionRes;				
//		}
        
//        //測試用
//        //ReservationStore --> Re-show-a-stores
//        //http://localhost:8080/myapp/backstage/ReservationStore/getstoreId?storeIDnumberView=1
//        @ResponseBody
//  		@GetMapping(value = "backstage/ReservationStore/getstoreId")
//  		public Optional<ReservationStore> getStoreById3(@RequestParam("storeIDnumberView") Integer storeId) {
//  				   // System.out.println(storeId);
//  				    Optional<ReservationStore>	opionRes = service.findById(storeId);
//  				   // System.out.println(opionRes);
//  				    return opionRes;				
//  		}
//        //抓到jsp的參數 name:storeIDnumberView之後 就會抓到它(name)的value也就是storeId
//        //postman key value測試
        
        
       
//        //印出修改前的資料---舊的
//        //ReservationStore --> Re-show-a-stores
//  		@GetMapping(value = "backstage/ReservationStore/editStore")
//  		public ModelAndView getStoreById4(ModelAndView mav,@RequestParam(name="storeIDnumberView") Integer storeId) {
//  			System.out.println("TEST=====================");   
//  			Optional<ReservationStore> opionRes = service.findById(storeId);
//  			mav.getModel().put("foreachAstore", opionRes);
//  			mav.setViewName("Re-show-a-store");	
//  		    System.out.println(opionRes);
//  		    return mav;				
//  		}
        
	
		//修改一筆資料  抓到資料導入頁面
        //ReservationStore.jsp 導向 Re-show-a-store2
  		@GetMapping(value = "backstage/ReservationStore/editStore")
  		public String editStore(Model model,@RequestParam(name="storeIDnumberView") Integer storeId) {
//  		System.out.println(storeId);
//  		System.out.println(model.getAttribute("storeIDnumberView"));
  			ReservationStore reS = service.findById(storeId);

  			model.addAttribute("modAttReShowAStore", reS);  
//  		System.out.println(reS.getStoreName());
  			
  		    return "Re-show-a-store2";				
  		}
                                                                                             
        //修改一筆資料 輸入後匯出並導向新頁面
  		//Re-show-a-store2 導向 ReservationStore.jsp
  		@PostMapping(value = "backstage/ReservationStore/editStore")
  		public ModelAndView editAStore(ModelAndView mav, @Valid @ModelAttribute(name="modAttReShowAStore") ReservationStore reS,
  			@RequestParam("storeImgNew") MultipartFile file,HttpServletRequest request,BindingResult br) throws ParseException {  		
  			//System.out.println(reS.getStoreName());
  			//System.out.println(reS.getCreatedAt());
  			 		 			
  		
  			if(!file.isEmpty()) {   //如果要改檔案就做這件事
  				String filePath = request.getServletContext().getRealPath("") + "\\Img\\";  //抓出${contextRoot}
  	  			String fileName = file.getOriginalFilename();  //抓出file上傳的原始檔名
  	  			String suffixName = fileName.substring(fileName.lastIndexOf("."));  //副檔名
  	  			fileName = UUID.randomUUID() + suffixName;  //原始檔名加上亂數後加上副檔名
  	  			
  	  			File dest = new File(filePath + fileName);  
  	  			
  	  			if(!dest.getParentFile().exists()) {  //如果img資料夾存在就存進去
  	  				dest.getParentFile().mkdirs();   //如果不存在就做一個資料夾
  	  			}try {
  	  				file.transferTo(dest);
  	  			}catch(Exception e){
  	  				e.printStackTrace();
  	  			}
  	  			System.out.println(fileName);
  	  			
  				reS.setStoreImg(fileName);   //存檔案
  			}

  			reS.setModifiedAt(new Date());
  			//System.out.println(reS.getModifiedAt());
  			
			//mav.setViewName("Re-show-a-store2");	有錯才導回去?
  			// if(!br.hasErrors()) {

  			service.insert(reS);
  			mav.setViewName("redirect:/backstage/ReservationStore");
  			//  }			
  			return mav;	 			
  		}
  		
  		
//遇到問題:https://neillin1415.pixnet.net/blog/post/362128512-%E3%80%90%E9%8C%AF%E8%AA%A4%E8%A8%8A%E6%81%AF%E3%80%91spring-mvc---request-method-'post'-not-sup
  		
  		
  		//刪除一筆資料
  		@GetMapping("/backstage/ReservationStore/delAStore")
  		public ModelAndView deleteMessage(ModelAndView mav, @RequestParam(name="storeIDnumberDel") Integer storeId) {
  			service.deleteById(storeId);
  			
  			mav.setViewName("redirect:/backstage/ReservationStore");
  			
  			return mav;
  		}
  		
  		//批次刪除
  		@PostMapping("/backstage/ReservationStore/deleteBatch")
  		@ResponseBody
  		public String deleteBatch(@RequestParam("list") List<Integer> list) { 			
  			System.out.println(list);
  			
  			for(Integer id : list) {
  				service.deleteById(id);
  			}
  						
  			return "success";
  		}
  	
  		
  	//批次刪除
//  		@PostMapping("/backstage/ReservationStore/deleteBatch")
//  		@ResponseBody
//  		public ModelAndView deleteBatch(ModelAndView mav,@RequestParam("list") List<Integer> list) { 			
//  			System.out.println(list);
//  			
//  			for(Integer id : list) {
//  				service.deleteById(id);
//  			}
//  			
//  			mav.setViewName("redirect:/backstage/ReservationStore");
//  						
//  			return mav;
//  		}
  		
  		
  		
  		

  		//新增一筆店家資訊 導入頁面
  		@GetMapping("/backstage/ReservationStore/addAStore")
  		public ModelAndView addStore(ModelAndView mav) {
  			
  			ReservationStore newStore = new ReservationStore();
  			mav.getModel().put("modAtt-Re-new-a-store", newStore);
  			 				
  	        mav.setViewName("Re-new-a-store");
  			return mav;
  		}
  		
  		

  		
  		//新增一筆店家資訊 輸入後匯出並導向新頁面  form表單
  		@PostMapping(value="/backstage/ReservationStore/insert")
  		public String insertBackTaskes(@RequestParam("storeDepartmentNumber") Integer storeDepartmentNumber, 
  				@RequestParam("storeName")String storeName, 
  				@RequestParam("storePhone") String storePhone, 
  				@RequestParam("storeAddress") String storeAddress, 
  				@RequestParam("storeOpendate") String storeOpendate,
  				@RequestParam("storeImg") MultipartFile file, HttpServletRequest request
  				){  			
  			ReservationStore bean = new ReservationStore(storeDepartmentNumber, storeName, 
  					storePhone, storeAddress, 
  					storeOpendate);
  			String filePath = request.getServletContext().getRealPath("") + "\\Img\\";
  			
  			String fileName = file.getOriginalFilename();
  			String suffixName = fileName.substring(fileName.lastIndexOf("."));
  			fileName = UUID.randomUUID() + suffixName;
  			
  			File dest = new File(filePath + fileName);
  			
  			if(!dest.getParentFile().exists()) {
  				dest.getParentFile().mkdirs();
  			}try {
  				file.transferTo(dest);
  			}catch(Exception e){
  				e.printStackTrace();
  			}
  			
  			bean.setStoreImg(fileName);
  			
  			service.insert(bean);
  			return "redirect:/backstage/ReservationStore";
  		}


  	   //取消按鈕
        @GetMapping("/backStage/CancelReturnStore")
        public String CancelReturnStore() {
            return "redirect:/backstage/ReservationStore";
        }	            

        //新增一筆店家資訊 輸入後匯出並導向新頁面  舊的-formform表單用
//  		@PostMapping("/backstage/ReservationStore/addAStore")
//  		public ModelAndView addStore(ModelAndView mav, @Valid @ModelAttribute(name = "modAtt-Re-new-a-store") ReservationStore reS,
//  				BindingResult br) {
//
//  			if (!br.hasErrors()) {
//  				service.insert(reS);
//  				ReservationStore newStore = new ReservationStore();
//  				mav.getModel().put("modAtt-Re-new-a-store", newStore);
//  			}
// 			
//  			mav.setViewName("redirect:/backstage/ReservationStore");
//
//  			return mav;
//  		}
     
}


