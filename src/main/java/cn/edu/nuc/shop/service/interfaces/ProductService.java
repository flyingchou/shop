package cn.edu.nuc.shop.service.interfaces;

import java.util.List;

import cn.edu.nuc.shop.entiry.Product;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

public interface ProductService {

	List<Product> listProduct();
	
	int addProduct(Product product);
	
	int deleteProduct(Product product);
	
	Product findById(int pid);
	
	int updateProduct(Product product);
	
	List<Product> findByName(String pname);

	PageInfo<Product> pageInfo(int pageNum, int pageSize);

	/**列出最新的10条商品
     * @return list
     */
    List<Product> frontlistNew();

    /**列出最热的10条商品
     * @return list
     */
    List<Product> frontlistHot();

}