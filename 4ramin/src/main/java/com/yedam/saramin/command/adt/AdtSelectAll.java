package com.yedam.saramin.command.adt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.adoptions.service.AdoptionService;
import com.yedam.saramin.adoptions.service.impl.AdoptionServiceImpl;
import com.yedam.saramin.comm.Command;

public class AdtSelectAll implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		AdoptionService adtDao = new AdoptionServiceImpl();
		request.setAttribute("adoptions", adtDao.selectAdoptionAll());
		request.setAttribute("pageName", "채용공고");
		return "adoptions/adtSelectAll";
	}

}
