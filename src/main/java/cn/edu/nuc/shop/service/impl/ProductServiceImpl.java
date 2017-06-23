package cn.edu.nuc.shop.service.impl;

import java.util.List;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.shop.dao.ProductMapper;
import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.service.interfaces.ProductService;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Service
public class ProductServiceImpl implements ProductService {

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private ProductMapper productMapper;

	
	@Override
	public List<Product> listProduct() {

	    return	productMapper.listProduct();
	}


	@Override
	public int addProduct(Product product) {
		
		return productMapper.insert(product);
	}


	@Override
	public int deleteProduct(Product product) {
		
		
		return productMapper.deleteByPrimaryKey(product.getPid());
	}


	@Override
	public Product findById(int pid) {
		
		return productMapper.selectByPrimaryKey(pid);
	}


	@Override
	public int updateProduct(Product product) {
		
		return productMapper.updateByPrimaryKey(product);
	}


	@Override
	public List<Product> findByName(String pname) {

		return productMapper.findByPname(pname);
	}


	@Override
	public PageInfo<Product> pageInfo(int pageNum, int pageSize) {
		//PageHelper.startPage(pageNum, pageSize);
		List<Product> list = productMapper.listProduct();
		//PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		return new PageInfo<Product>(list);
	}

	@Override
	public List<Product> frontlistNew() {

		return productMapper.frontlistNew();
	}


	@Override
	public List<Product> frontlistHot() {

		return productMapper.frontlistHot();
	}


}
