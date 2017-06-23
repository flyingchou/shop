package cn.edu.nuc.shop.service.interfaces;


import java.util.List;

import cn.edu.nuc.shop.entiry.Forder;
import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.entiry.Sorder;

public interface SorderService  {

	//计算购物总价格
	public Forder addSorder(Forder forder,Product product);
	
	//商品转化成订单项
	public Sorder productToSorder(Product product);
	
	
	/** 通过订单id查询订单项
	 * @param fid
	 * @return
	 */
	public List<Sorder> listSorderByfid(int fid);
}
