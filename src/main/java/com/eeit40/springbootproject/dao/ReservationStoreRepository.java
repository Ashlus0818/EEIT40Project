package com.eeit40.springbootproject.dao;

import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.loginTest.AppUser;
import com.eeit40.springbootproject.model.ReservationStore;

@Repository 
//紫色字左邊(ReservationStore)是目前的資料型別,右邊(Integer)是這entity的id的資料型別
public interface ReservationStoreRepository extends JpaRepository<ReservationStore, Integer> {

	// JPQL=HQL Query方法 boot講義p96, 查詢方法-->在Repository寫一個方法-->參數設定好-->@Query
	@Query("from ReservationStore where storeName = :name")
	public List<ReservationStore> findStoreByNameHQL(@Param("name") String name);

	// 根據名字去找所以參數是字串String,然後因為是請求參數要用@Param(controller是用@RequestParam)
	// from 物件名稱 // where name = storeName對應@Param的storeName
	// 剩下要在controller做-->findByName()
	// 重要!關於name要注意的對應-->where storeName(要搭配table的欄位名)
	// storeName = :name 此name要搭配 @Param("name") 的name 兩個要一樣
	// String name 的name隨便取

	// 更上面hql相比,此為下原生sql語法,不是對Entity而是對table操作 boot講義p99
	@Query(value = "select * from ReservationStore where storeName = :name", nativeQuery = true)
	public List<ReservationStore> findStoreByNameSQL(@Param("name") String name);
	// 小括號裡有兩個屬性以上,前面要加value

	
	// @Query delete方法
	@Transactional
	@Modifying
	@Query(value = "delete from ReservationStore where storeId=?1", nativeQuery = true)
	public void deleteStoreByIdSQL(Integer storeId);

	// 使用原生sql指令
	// delete跟update都要用@Modifying,然後hql不支援insert
	// 此前方法未使用service層,若要在dao層寫交易(交易原本該在service層),須加上@Transactional
    // select方法不需要加@Transactional,所以頭兩個find方法不用
	//where id == Integer id
	
	
	//使用直接透過方法名稱查詢 boot講義p101
	//搜尋storeName並按storeId排序  因為命名規則,欄位名稱開頭必須大寫
	public List<ReservationStore> findByStoreNameOrderByStoreId(String StoreName);
	//搜尋StoreDepartmentNumber並按storeName降冪排序
	public List<ReservationStore> findByStoreDepartmentNumberOrderByStoreNameDesc(Integer StoreDepartmentNumber);
	
	//controller-->呼叫service-->呼叫DAO-->DAO去找bean
	
	@Query("FROM ReservationStore a WHERE storeDepartmentNumber = ?1")
	public Collection<ReservationStore> find1(int text1);
	
	Page<ReservationStore> findByStoreNameContaining(String name,Pageable page);
}
