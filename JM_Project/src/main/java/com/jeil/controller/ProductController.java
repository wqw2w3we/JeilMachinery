package com.jeil.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jeil.service.ProductService;
import com.jeil.domain.ProductVO;


@Controller
public class ProductController {
	@Inject
	private ProductService service;
	
	@RequestMapping(value = "/hsm_bb", method = RequestMethod.GET)
	public String createGET1() throws Exception {
		return "product/hsm_bb.tiles";
	}
	
	@RequestMapping(value = "/hsm_gb", method = RequestMethod.GET)
	public String createGET2() throws Exception {
		return "product/hsm_gb.tiles";
	}
	
	@RequestMapping(value = "/hsm_gt", method = RequestMethod.GET)
	public String createGET3() throws Exception {
		return "product/hsm_gt.tiles";
	}
	
	/*@RequestMapping(value = "/hsm4", method = RequestMethod.GET)
	public String createGET4() throws Exception {
		return "machine/hsm4.tiles";
	}
	
	@RequestMapping(value = "/hsm5", method = RequestMethod.GET)
	public String createGET5() throws Exception {
		return "machine/hsm5.tiles";
	}
	*/
	
	/*-------------------제품 글 올리기------------------*/
	@RequestMapping(value="/product_write", method=RequestMethod.GET)
	public String ProductWriteGET() throws Exception{
		System.out.println("제품 글쓰기 버튼 클릭됨");
		return "product/product_write.tiles";
	}
	
	@RequestMapping(value="/product_write", method=RequestMethod.POST)
	public String ProductWritePOST(ProductVO pvo, RedirectAttributes attr) throws Exception{
		attr.addFlashAttribute("P_W", "PWSuccess");
		System.out.println("hhhhhhh::::::: " + pvo.getProduct_category());
		System.out.println("ggggggg::::::: " + pvo.getProduct_picture());
		service.create(pvo);
		
		System.out.println("되는거여ㅕㅕㅕㅕㅕㅕㅕㅕㅕ????????");
		
		return "redirect:/mypage";
	}

	
	public String getCurrentDayTime(){
	    long time = System.currentTimeMillis();
	    SimpleDateFormat dayTime = new SimpleDateFormat("yyyyMMdd-HH-mm-ss", Locale.KOREA);
	    return dayTime.format(new Date(time));
	}
	
	@RequestMapping(value = "tttesttt", method = RequestMethod.POST)
	 public void ImageUploadTest(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile product_picture) {
		 OutputStream out = null;
	        PrintWriter printWriter = null;
	        response.setCharacterEncoding("utf-8");
	        response.setContentType("text/html;charset=utf-8");
	 
	        try{
	        	 
	            String fileName = product_picture.getOriginalFilename();
	            String onlyFileName = fileName.substring(0, fileName.indexOf(".")); // fileName
	            String extension = fileName.substring(fileName.indexOf(".")); // .jpg
	            String rename = onlyFileName + "_" + getCurrentDayTime() + extension; // fileName_20150721-14-07-50.jpg
	            
	            byte[] bytes = product_picture.getBytes();
	            String uploadPath = "C:/WORKSPACE/JM_Project/src/main/webapp/resources/upload/" + rename;//占쏙옙占쏙옙占쏙옙
	            
	            
	            out = new FileOutputStream(new File(uploadPath));
	            out.write(bytes);
	            
	        }catch(IOException e){
	            e.printStackTrace();
	        } finally {
	            try {
	                if (out != null) {
	                    out.close();
	                }
	                if (printWriter != null) {
	                    printWriter.close();
	                }
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        return;
	}
	
	
	
	
}

