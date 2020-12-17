package kr.co.haksa.dao;

import java.util.ArrayList;

import kr.co.haksa.dto.StudentDto;
import kr.co.haksa.dto.SungjukDto;

public interface SungjukDao {

	public ArrayList<StudentDto> input(StudentDto sdto);

	public void input_ok(SungjukDto sjdto);

	public ArrayList<SungjukDto> sungjuk_view();

	
	
	
	
	
	
	
	
	
}
