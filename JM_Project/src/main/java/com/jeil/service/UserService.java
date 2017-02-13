package com.jeil.service;

import com.jeil.dto.LoginDTO;
import com.jeil.domain.UserVO;

public interface UserService {

	
	public void create(UserVO vo)throws Exception;
    public UserVO login(LoginDTO dto)throws Exception;
    public UserVO read(String user_id) throws Exception;
    public int check_id(String user_id) throws Exception;
    public void modify(UserVO vo) throws Exception;
}
