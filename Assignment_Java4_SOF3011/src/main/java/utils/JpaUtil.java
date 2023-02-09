package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtil {
//	Lý do khônng tạo thuộc tính static factory & em
//	https://stackoverflow.com/a/8621429
//	https://stackoverflow.com/a/54722284/5938111
	public static EntityManagerFactory getFactory() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("Assignment_Java4_SOF3011");
		
		return factory;
	}
	
	public static EntityManager getEntityManager() {
		EntityManager em = JpaUtil.getFactory().createEntityManager();
		
		return em;
	}
}
