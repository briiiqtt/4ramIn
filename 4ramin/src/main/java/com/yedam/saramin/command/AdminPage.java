package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.comm.Command;

public class AdminPage implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 어드민 페이지 호출
		
		return "home/adminPage" ;
	}

}
