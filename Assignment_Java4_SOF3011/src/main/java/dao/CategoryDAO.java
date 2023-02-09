package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entities.Category;
import entities.User;
import utils.JpaUtil;

public class CategoryDAO {
	private EntityManager em;
	
	public CategoryDAO() {
		this.em = JpaUtil.getEntityManager();
	}
	
	public Category create(Category cate) {
		try {
			this.em.getTransaction().begin();
			this.em.persist(cate);
			this.em.flush();
			this.em.getTransaction().commit();
			
			return cate;
		} catch (Exception e) {
			this.em.getTransaction().rollback();
			e.printStackTrace();
			throw e;
		}
	}
	
	public List<Category> all(){
		String jpql = "SELECT obj FROM Category obj";
		TypedQuery<Category> query = this.em.createQuery(jpql, Category.class);
		
		return query.getResultList();
	}
	
	public List<Category> shirt() {
		String jpql = "SELECT obj FROM Category obj WHERE obj.loai = 0";
		TypedQuery<Category> query = this.em.createQuery(jpql, Category.class);
		
		return query.getResultList();
	}
	
	public List<Category> trousers() {
		String jpql = "SELECT obj FROM Category obj WHERE obj.loai = 1";
		TypedQuery<Category> query = this.em.createQuery(jpql, Category.class);
		
		return query.getResultList();
	}
	
	public Category findByID(int id) {
		return this.em.find(Category.class, id);
	}
	
	public void delete(Category entity) throws Exception {
		try {
			//Bắt đầu Transaction
			this.em.getTransaction().begin();
			
			//Xóa đối tượng
			this.em.remove(entity);
			
			//Kết thúc Transaction
			this.em.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			this.em.getTransaction().rollback();
			throw e;
		}
	}
	
	public void update(Category entity) throws Exception {
		try {
			//Bắt đầu Transaction
			this.em.getTransaction().begin();
			
			//Xóa đối tượng
			this.em.merge(entity);
			
			//Kết thúc Transaction
			this.em.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			this.em.getTransaction().rollback();
			throw e;
		}
	}
}
