package cn.edu.nuc.shop.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.service.interfaces.ProductService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-context.xml","classpath:spring-mvc.xml"})
public class ProductServiceTest {
	
	@Autowired
	private ProductService productService;
	
	@Test
	public void listProduct(){
		Product product =  productService.findById(24);
		 System.out.println(product);
	}

	@Test
	public void testPageHelper(){
		PageHelper.startPage(1,5);
		List<Product> list = productService.listProduct();//list方法调用
		PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		System.out.println(pageInfo+"--------------------------");
	}
}
