package cn.edu.nuc.shop.dao;

import java.util.List;

import cn.edu.nuc.shop.entiry.Sorder;

public interface SorderMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(Sorder record);

    int insertSelective(Sorder record);

    Sorder selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Sorder record);

    int updateByPrimaryKey(Sorder record);
    
    int deleteByFid(int fid);
    
    /** 通过订单id查询订单项
	 * @param fid
	 * @return
	 */
	public List<Sorder> listSorderByfid(int fid);
}