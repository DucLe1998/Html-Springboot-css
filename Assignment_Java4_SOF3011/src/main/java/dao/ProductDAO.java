package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entities.Product;
import utils.JpaUtil;

public class ProductDAO {
	private EntityManager em;
	
	public ProductDAO() {
		this.em = JpaUtil.getEntityManager();
	}
	
	public Product create(Product cate) {
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
	
	public List<Product> all(){
		String jpql = "SELECT p FROM Product p";
		TypedQuery<Product> query = this.em.createQuery(jpql, Product.class);
		
		return query.getResultList();
	}
	
	public Product findByID(int id) {
		return this.em.find(Product.class, id);
	}
	
	public void delete(Product entity) throws Exception {
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
	
	public void update(Product entity) throws Exception {
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
