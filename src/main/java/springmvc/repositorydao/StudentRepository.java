package springmvc.repositorydao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import springmvc.pojo.StudentPOJO;

@Repository
public class StudentRepository {
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	private static Query query;
	private static String jpql;

	public static void openConnection() {
		factory = Persistence.createEntityManagerFactory("studmvc");
		manager = factory.createEntityManager();
		transaction = manager.getTransaction();
	}

	public static void closeConnection() {
		if (factory != null) {
			factory.close();
		}
		if (manager != null) {
			manager.close();
		}
		if (transaction != null) {

			if (transaction.isActive()) {
				transaction.rollback();
			}
		}
	}

	public StudentPOJO addUser(String email, String userName, String address) {

		openConnection();
		transaction.begin();
		StudentPOJO user = new StudentPOJO();

		user.setEmail(email);
		user.setUserName(userName);
		user.setAddress(address);

		manager.persist(user);
		transaction.commit();
		closeConnection();
		return user;
	}

	public StudentPOJO searchUser(int id) {
		openConnection();
		transaction.begin();
		StudentPOJO user = manager.find(StudentPOJO.class, id);

		if (user != null) {
			transaction.commit();
			closeConnection();
			return user;

		}
		transaction.commit();
		closeConnection();
		return null;
	}

	public List<StudentPOJO> allUser() {
		openConnection();
		transaction.begin();
		jpql = "from StudentPOJO";
		query = manager.createQuery(jpql);
		List<StudentPOJO> users = query.getResultList();
		transaction.commit();
		closeConnection();

		return users;
	}
	

	public StudentPOJO removeData(int id) {
		openConnection();
		transaction.begin();
		StudentPOJO user = manager.find(StudentPOJO.class, id);
		manager.remove(user);
		transaction.commit();
		closeConnection();
		return user;
	}

	
}
