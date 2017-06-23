package cn.edu.nuc.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.shop.dao.SorderMapper;
import cn.edu.nuc.shop.entiry.Forder;
import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.entiry.Sorder;
import cn.edu.nuc.shop.service.interfaces.SorderService;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class SorderSeriviceImpl  implements SorderService {
	
	@Autowired
	private SorderMapper sorderMapper;

	@Override
	public Forder addSorder(Forder forder, Product product) {
		boolean isHave = false;
		Sorder sorder = productToSorder(product);
		//判断当前购物项是否重复，如果重复则添加数量即可
		for (Sorder old : forder.getSorderSet()) {
			if(old.getProduct().getPid().equals(sorder.getProduct().getPid())){
				
				old.setNumber(old.getNumber() + sorder.getNumber());
				old.setPrice(sorder.getPrice());
				isHave = true;
				break;
			}
		}
		//说明当前购物项  在购物车中是不是存在
		if(!isHave){
			
			forder.getSorderSet().add(sorder);
		}
		
		return forder;
	}

	@Override
	public Sorder productToSorder(Product product) {
		
		Sorder sorder = new Sorder();
		sorder.setName(product.getPname());
		sorder.setNumber(product.getNumber());
		sorder.setPrice(product.getCprice());
		sorder.setProduct(product);
		sorder.setPid(product.getPid());
		
		return sorder;
	}

	@Override
	public List<Sorder> listSorderByfid(int fid) {
		
		List<Sorder> list = sorderMapper.listSorderByfid(fid);
		
		return list;
	}
}
