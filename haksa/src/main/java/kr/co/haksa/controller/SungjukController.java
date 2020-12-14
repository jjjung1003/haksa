package kr.co.haksa.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.haksa.dao.StudentDao;
import kr.co.haksa.dao.SungjukDao;
import kr.co.haksa.dto.StudentDto;
import kr.co.haksa.dto.SungjukDto;

@Controller
public class SungjukController {

	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/sungjuk/input")
	public String input(StudentDto sdto,Model model)
	{
		SungjukDao sjdao=sqlSession.getMapper(SungjukDao.class);
		ArrayList<StudentDto> list=sjdao.input(sdto);
		model.addAttribute("list", list);
		return "/sungjuk/input";
	}
	
	@RequestMapping("/sungjuk/input_ok")
	public String input_ok()
	{
		return "redirect:/sungjuk/input";
	}
	

	
	
	
	
	
	
	
	
	
	
}
