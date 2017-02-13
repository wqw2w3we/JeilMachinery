package com.jeil.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jeil.domain.ProductVO;

public interface ProductService {
	public void create(ProductVO vo) throws Exception;

}
