package kr.co.haksa.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class StudentController {
	
	@Autowired
	public SqlSession sqlSession;
	
}