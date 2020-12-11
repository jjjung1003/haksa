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
	
	@RequestMapping("/main/index")
	public String index()
	{
		return "/main/index";
	}
	
	@RequestMapping("/student/swrite")
	public String swrite()
	{
		return "/student/swrite";
	}
	
	@RequestMapping("/student/swrite_ok")
	public String swrite_ok(StudentDto sdto)
	{
		StudentDao sdao=sqlSession.getMapper(StudentDao.class);
		// 학번만들기
		String year="2020";
		String number=sdao.get_hakbun(year);
		String hakbun=null; // 추가상품의 완성된 코드를 저장
		if(number==null)
			hakbun=year+"001";
		else
		{
			Integer num=Integer.parseInt(number);
			num++;
			int len=num.toString().length();
			
			if(len==1)
				hakbun=year+"00"+num;
			else if(len==2)
				   hakbun=year+"0"+num;
			     else if(len==3)
			    	    hakbun=year+num;
	    }             
	    sdto.setHakbun(hakbun);
		sdao.swrite_ok(sdto);
		return "redirect:/student/slist";
	}
	
	@RequestMapping("/student/slist")
	public String slist(Model model)
	{
		StudentDao sdao=sqlSession.getMapper(StudentDao.class);
		ArrayList<StudentDto> list=sdao.slist();
		model.addAttribute("list", list);
		return "/student/slist";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
