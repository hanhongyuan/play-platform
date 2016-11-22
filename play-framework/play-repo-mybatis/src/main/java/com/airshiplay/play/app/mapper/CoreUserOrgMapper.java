package com.airshiplay.play.app.mapper;

import com.airshiplay.play.app.model.CoreUserOrg;
import com.airshiplay.play.app.model.CoreUserOrgExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CoreUserOrgMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int countByExample(CoreUserOrgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int deleteByExample(CoreUserOrgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int insert(CoreUserOrg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int insertSelective(CoreUserOrg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    List<CoreUserOrg> selectByExample(CoreUserOrgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    CoreUserOrg selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") CoreUserOrg record, @Param("example") CoreUserOrgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int updateByExample(@Param("record") CoreUserOrg record, @Param("example") CoreUserOrgExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(CoreUserOrg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table core_user_org
     * @mbggenerated
     */
    int updateByPrimaryKey(CoreUserOrg record);
}