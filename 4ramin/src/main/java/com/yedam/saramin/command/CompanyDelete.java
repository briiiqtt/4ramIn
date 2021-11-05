package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.saramin.comm.Command;
import com.yedam.saramin.company.service.CompanyService;
import com.yedam.saramin.company.service.CompanyVO;
import com.yedam.saramin.company.serviceImpl.CompanyServiceImpl;

public class CompanyDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession() ;
		CompanyService companyDao = new CompanyServiceImpl() ;
		CompanyVO vo = new CompanyVO() ;
		vo.setCom_id(request.getParameter("com_id")) ;
		vo.setCom_pw(request.getParameter("com_pw")) ;
		vo.setCom_reg(request.getParameter("com_reg")) ;
		
		String id = String.valueOf(session.getAttribute("id")) ;
		String viewPage = null ;
		
		if (id.equals(request.getParameter("com_id")) || id.equals("admin")) {
			int n = companyDao.deleteCompany(vo) ;
			if (n != 0) {
				viewPage = "main.do" ;
			} else {
				viewPage = "company/companyDeleteForm" ;
			}
		} else {
			viewPage = "company/companyDeleteForm" ;
		}
		
		return viewPage ;
	}

}
