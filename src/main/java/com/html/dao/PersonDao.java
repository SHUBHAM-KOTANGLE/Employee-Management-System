package com.html.dao;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.html.model.Person;

@Repository
@Transactional
public class PersonDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;

//	save or update
	public void Update(Person person) {
		
		this.hibernateTemplate.update(person);
		
	}
	
//	//	save
	public int save(Person person) {
		int i = (Integer) hibernateTemplate.save(person);
		
		return i;
		
	}
//	loadAll
	public List<Person> loadAllPerson(){
		List<Person> list = hibernateTemplate.loadAll(Person.class);
		
		return list;
		
	}
//	get single by id
	public Person getsinglePerson(int pid) {
		Person per = hibernateTemplate.get(Person.class, pid);
		
		return per;
		
	}
//    load &delete
	public void delete(int pid) {
		Person load = hibernateTemplate.load(Person.class, pid);
		hibernateTemplate.delete(load);
		
	}
	
//	////////////////////////////////////////////////////////////////////////////////
	
//	login
	public Person loginValue(String email,String password) {
		
		String SQL="from Person where email=:mail and password=:pass";
		
		Person us = (Person) hibernateTemplate.execute(s ->{
			Query q=s.createQuery(SQL);
			q.setString("mail", email);
			q.setString("pass", password);
			return q.uniqueResult();
			
		});
		
		
		
		return us;
		
	}
	
	
	
	
	
	
	
	
	
}
