package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.comm.Command;

public class AdtSelectAll implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		return "adoptions/adtSelectAll";
	}

}
