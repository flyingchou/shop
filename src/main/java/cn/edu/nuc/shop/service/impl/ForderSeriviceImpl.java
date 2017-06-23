package cn.edu.nuc.shop.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.nuc.shop.dao.ForderMapper;
import cn.edu.nuc.shop.dao.ProductMapper;
import cn.edu.nuc.shop.dao.SorderMapper;
import cn.edu.nuc.shop.entiry.Forder;
import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.entiry.Sorder;
import cn.edu.nuc.shop.service.interfaces.ForderService;

@Transactional
@Service
public class ForderSeriviceImpl  implements
ForderService {
	
	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private ForderMapper forderMapper;
	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private SorderMapper sorderMapper;
	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private ProductMapper productMapper;
	

	public Double cluTotal(Forder forder) {
		
		double tal=0.0;
		for(Sorder temp : forder.getSorderSet()){
			
			tal+=temp.getPrice()*temp.getNumber();
		}
		
		return tal;
	}
	@Transactional
	@Override
	public int insertOrder(Forder forder,Forder sessionforder) throws Exception  {
		//插入订单
		int count = forderMapper.insert(forder);
		
		if(count<=0){
			throw new Exception("订单插入异常");
		}else{
			int fid = forder.getFid();
			
			 Set<Sorder> sorderSet = sessionforder.getSorderSet();
			 
			 for (Sorder sorder : sorderSet) {
				 
				 
				 sorder.setFid(fid);
			 }
			 
			 //插入订单项
			for (Sorder sorder : sorderSet) {
				 
				count =  sorderMapper.insert(sorder);
				if(count<=0){
					
					throw new Exception("插入订单项异常");
				}
				
			}
			
			 Set<Product> productSet = new HashSet<Product>();
			 
			 for (Sorder sorder : sorderSet) {
				 
				 productSet.add( sorder.getProduct());
				
			 }
			
			 //更新商品数量
			 count = productMapper.subProductNumber(productSet);
			 
			 if(count<=0){
					
				throw new Exception("商品库存不足");
			 }
			 
			return count;
		}

	}
	@Override
	public List<Forder> selectList() {
		
		return forderMapper.selectList();
	}

	@Transactional
	@Override
	public int deleteByPrimaryKey(int fid) throws Exception {
		
		int count = sorderMapper.deleteByFid(fid);
		System.out.println(count);
		if(count<=0){
			
			throw new Exception("删除失败");
		}
		
		   count = forderMapper.deleteByPrimaryKey(fid);
		System.out.println(count);
		if(count<=0){
			
			throw new Exception("删除失败");
		}
		return count;
	}

	@Transactional
	@Override
	public  int  updateByStatus (int fid) {
		int status = forderMapper.updateByStatus(fid);
//		System.out.println(status);
//		if(status<=0){
//			status=1;
//		}
		System.out.println(status);

		return status;
	}
}