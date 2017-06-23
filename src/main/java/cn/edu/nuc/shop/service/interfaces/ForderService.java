package cn.edu.nuc.shop.service.interfaces;

import java.util.List;


import cn.edu.nuc.shop.entiry.Forder;

public interface ForderService {

	public Double cluTotal(Forder forder);
	
	public int insertOrder(Forder forder,Forder sessionforder) throws Exception;

	public List<Forder> selectList(); 
	
	public int deleteByPrimaryKey(int fid) throws Exception;

	public  int updateByStatus(int fid) ;

}
