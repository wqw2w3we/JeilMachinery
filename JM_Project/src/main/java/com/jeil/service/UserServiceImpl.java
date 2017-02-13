package com.jeil.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jeil.dto.LoginDTO;
import com.jeil.domain.UserVO;
import com.jeil.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public void create(UserVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}
	
	@Override
   public UserVO read(String user_id) throws Exception {
      return dao.read(user_id);
   }

   @Override
   public int check_id(String user_id) throws Exception {
      return dao.check_id(user_id);
   }

   @Override
   public void modify(UserVO vo) throws Exception {
      dao.modify(vo);
   }
	   
}
