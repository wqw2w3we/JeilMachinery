package com.jeil.service;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jeil.domain.ProductVO;
import com.jeil.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{

	@Inject
	private ProductDAO dao;
	
	@Override
	public void create(ProductVO vo) throws Exception{
		System.out.println("크리에이트 실행시켜라");
		dao.create(vo);
	}
}
