package cn.edu.nuc.shop.dao;


import java.util.List;
import java.util.Set;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import cn.edu.nuc.shop.entiry.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    List<Product> listProduct();


    List<Product> findByPname(String pname);

    //前台
    PageInfo<Product> pageInfo();
    /**列出最新的10条商品
     * @return list
     */
    List<Product> frontlistNew();

    /**列出最热的5条商品
     * @return list
     */
    List<Product> frontlistHot();
    
    /**更新商品的数量
     * @param set 商品的集合
     * @return int 
     */
    int subProductNumber(@Param("list") Set<Product> set);

    List<Product> selectByPrimaryKey();
}