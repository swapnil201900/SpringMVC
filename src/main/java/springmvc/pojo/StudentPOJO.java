package springmvc.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
@Entity
@Data
public class StudentPOJO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	
	private int id;
	private String email;
	private String userName;
	private String address;

}
