package cn.edu.nuc.shop.dao;


import cn.edu.nuc.shop.entiry.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    /**检查用户名
     * @return list
     */
    int checkUsername(String username);
    
    /**登陆
     * @return int
     */
    
    //User login(User user);

    User findByUser(@Param("username") String username, @Param("password") String password);
}