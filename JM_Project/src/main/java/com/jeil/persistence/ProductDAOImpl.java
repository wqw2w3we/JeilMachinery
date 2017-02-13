package com.jeil.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeil.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{

	@Inject 
	private SqlSession session;
	
	@Override
	public void create(ProductVO vo) throws Exception{
		session.insert("product.create", vo);
	}
}
