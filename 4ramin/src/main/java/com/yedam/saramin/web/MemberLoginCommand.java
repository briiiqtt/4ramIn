package com.yedam.saramin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.comm.Command;

public class MemberLoginCommand implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "member/memberLoginForm";
	}

}
