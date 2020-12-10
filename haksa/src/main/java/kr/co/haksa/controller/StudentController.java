package kr.co.haksa.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.haksa.dao.StudentDao;
import kr.co.haksa.dto.StudentDto;

@Controller
public class StudentController {
	
	@Autowired
	public SqlSession sqlSession;

	@RequestMapping("/student/write")
	public String write()
	{
		return "/student/write";
	}
	
	@RequestMapping("/student/write_ok")
	public String write_ok(StudentDto sdto)
	{
		StudentDao sdao=sqlSession.getMapper(StudentDao.class);
		sdao.write_ok(sdto);
		return "redirect:/student/list";
	}
	
	@RequestMapping("/student/list")
	public String list(Model model)
	{
		StudentDao sdao=sqlSession.getMapper(StudentDao.class);
		ArrayList<StudentDto> list=sdao.list();
		model.addAttribute("list", list);
		return "/student/list";
	}
	
	
	
	
	
	
	
}
