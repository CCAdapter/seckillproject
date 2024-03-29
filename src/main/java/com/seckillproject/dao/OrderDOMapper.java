package com.seckillproject.dao;

import com.seckillproject.dataobject.OrderDO;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDOMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info
     *
     * @mbg.generated Mon Feb 13 22:44:00 CST 2023
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info
     *
     * @mbg.generated Mon Feb 13 22:44:00 CST 2023
     */
    int insert(OrderDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info
     *
     * @mbg.generated Mon Feb 13 22:44:00 CST 2023
     */
    int insertSelective(OrderDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info
     *
     * @mbg.generated Mon Feb 13 22:44:00 CST 2023
     */
    OrderDO selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info
     *
     * @mbg.generated Mon Feb 13 22:44:00 CST 2023
     */
    int updateByPrimaryKeySelective(OrderDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info
     *
     * @mbg.generated Mon Feb 13 22:44:00 CST 2023
     */
    int updateByPrimaryKey(OrderDO record);
}