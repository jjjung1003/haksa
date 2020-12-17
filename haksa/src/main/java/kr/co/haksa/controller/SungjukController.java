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
	public String input(StudentDto sdto,Model model,HttpServletRequest request)
	{
		SungjukDao sjdao=sqlSession.getMapper(SungjukDao.class);
		ArrayList<StudentDto> list=sjdao.input(sdto);
		model.addAttribute("list", list);				
		return "/sungjuk/input";
	}
	
	@RequestMapping("/sungjuk/input_ok")
	public String input_ok(SungjukDto sjdto)
	{
		SungjukDao sjdao=sqlSession.getMapper(SungjukDao.class);
		sjdao.input_ok(sjdto);
		return "redirect:/sungjuk/input";
	}
	
	@RequestMapping("/sungjuk/sungjuk_view")
	public String sungjuk_view(Model model)
	{
		SungjukDao sjdao=sqlSession.getMapper(SungjukDao.class);
		ArrayList<SungjukDto> list=sjdao.sungjuk_view();
		model.addAttribute("list", list);
		return "sungjuk/sungjuk_view";
	}
	
	
	
	
	
	
	
	
	
	
}
