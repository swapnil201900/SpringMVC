package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.pojo.StudentPOJO;
import springmvc.repositorydao.StudentRepository;

@Service
public class StudentService {

	@Autowired
	private StudentRepository userDao;

	public StudentPOJO addUser(String email, String userName, String address) {

		StudentPOJO user = userDao.addUser(email, userName, address);
		return user;
	}

	public StudentPOJO searchUser(int id) {
		StudentPOJO user = userDao.searchUser(id);
		return user;
	}

	public List<StudentPOJO>allUser(){
		List<StudentPOJO> users=userDao.allUser();
		return users;
	}

	public StudentPOJO removeData(int id) {
		StudentPOJO user=userDao.removeData(id);
		return user;
		
	}
	
	
}
