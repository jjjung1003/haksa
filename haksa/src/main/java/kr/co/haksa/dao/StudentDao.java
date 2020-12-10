package kr.co.haksa.dao;

import java.util.ArrayList;

import kr.co.haksa.dto.StudentDto;

public interface StudentDao {

	public void write_ok(StudentDto sdto);

	public ArrayList<StudentDto> list();

}
