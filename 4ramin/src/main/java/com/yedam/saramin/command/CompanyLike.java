package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.saramin.comm.Command;
import com.yedam.saramin.company.service.CompanyService;
import com.yedam.saramin.company.service.CompanyVO;
import com.yedam.saramin.company.serviceImpl.CompanyServiceImpl;

public class CompanyLike implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 기업 좋아요 버튼 작동
		HttpSession session = request.getSession() ;
		CompanyService companyDao = new CompanyServiceImpl() ;
		CompanyVO vo = new CompanyVO() ;
		vo.setCom_id(String.valueOf(session.getAttribute("id"))) ;
		
		companyDao.likeCompany(vo) ;
		vo = companyDao.selectCompany(vo) ;
		request.setAttribute("likes", vo.getCom_like()) ;
		System.out.println(vo.getCom_like());
		
		return "ajax:" ;
	}

}
