package cn.edu.nuc.shop.dao;

import org.apache.ibatis.annotations.Param;

import cn.edu.nuc.shop.entiry.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer aid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer aid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin findByAdmin(@Param("username") String username,@Param("password") String password);
}