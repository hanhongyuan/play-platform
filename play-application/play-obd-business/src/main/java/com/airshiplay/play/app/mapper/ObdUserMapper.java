package com.airshiplay.play.app.mapper;

import com.airshiplay.play.app.model.ObdUser;
import com.airshiplay.play.app.model.ObdUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ObdUserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    long countByExample(ObdUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int deleteByExample(ObdUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int insert(ObdUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int insertSelective(ObdUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    List<ObdUser> selectByExample(ObdUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    ObdUser selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int updateByExampleSelective(@Param("record") ObdUser record, @Param("example") ObdUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int updateByExample(@Param("record") ObdUser record, @Param("example") ObdUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int updateByPrimaryKeySelective(ObdUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table obd_user
     *
     * @date
     */
    int updateByPrimaryKey(ObdUser record);
}