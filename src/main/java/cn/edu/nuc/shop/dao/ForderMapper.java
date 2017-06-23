package cn.edu.nuc.shop.dao;

import java.util.List;

import cn.edu.nuc.shop.entiry.Forder;

public interface ForderMapper {
    int deleteByPrimaryKey(Integer fid);

    int insert(Forder record);

    int insertSelective(Forder record);

    Forder selectByPrimaryKey(Integer fid);

    List<Forder> selectList();
    

    int updateByPrimaryKeySelective(Forder record);

    int updateByPrimaryKey(Forder record);

    int updateByStatus(int fid);
    
}