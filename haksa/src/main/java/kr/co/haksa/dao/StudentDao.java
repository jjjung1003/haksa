package kr.co.haksa.dao;

import java.util.ArrayList;

import kr.co.haksa.dto.StudentDto;

public interface StudentDao {
	
   public void swrite_ok(StudentDto sdto);
   public String get_hakbun(String year);
   public ArrayList<StudentDto> slist();
   
   
   
   
   
   
   
}
