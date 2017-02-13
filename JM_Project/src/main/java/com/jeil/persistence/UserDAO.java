package com.jeil.persistence;


import com.jeil.dto.LoginDTO;
import com.jeil.domain.UserVO;

public interface UserDAO {

	public void create(UserVO vo)throws Exception;
    public UserVO login(LoginDTO dto)throws Exception;
    public UserVO read(String user_id)throws Exception; //읽기
    public int check_id(String user_id)throws Exception; //아이디 중복체크
    public void modify(UserVO vo)throws Exception;//회원정보수정
    
}
