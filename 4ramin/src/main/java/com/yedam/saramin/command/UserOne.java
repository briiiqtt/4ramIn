package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.comm.Command;
import com.yedam.saramin.users.service.UsersService;
import com.yedam.saramin.users.service.UsersVO;
import com.yedam.saramin.users.serviceImpl.UsersServiceImpl;

public class UserOne implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//클릭한id값 받아와서 단건검색
		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		
		System.out.println("UserOne: "+request.getParameter("uid"));
		vo.setUser_id(request.getParameter("uid"));
		vo = usersDao.userssSelect(vo);
		request.setAttribute("userone", usersDao.userssSelect(vo));
		System.out.println(usersDao.userssSelect(vo));
		
		return "users/UserList";
	}

}
