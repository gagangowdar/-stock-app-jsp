package com.ty.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.dto.Item;


public class ItemDao {

	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("dev");
	 EntityManager entityManager=entityManagerFactory.createEntityManager();
	 EntityTransaction entityTransaction=entityManager.getTransaction();
	 
	 public void saveItem(Item item) {
		 entityTransaction.begin();
		 entityManager.persist(item);
		 entityTransaction.commit();
	 }
	 
	 public List<Item> getAllItem() {
		Query query=entityManager.createQuery("select item from Item item");
		List list=query.getResultList();
		return list;
	 }
	 public Item getItemById(int id) {
		Item item= entityManager.find(Item.class,id);
		 return item;
	 }
	 
	 public void updateItem(Item item) {
		 entityTransaction.begin();
		entityManager.merge(item);
		 entityTransaction.commit();
	 }

	 public boolean deleteItem(int id) { 
			 Item item=entityManager.find(Item.class,id);
		 if(item!=null) {
			 entityTransaction.begin();
			entityManager.remove(item);
			 entityTransaction.commit();
			 return true;
		 }
		 else
			 return false;
	 }

}
