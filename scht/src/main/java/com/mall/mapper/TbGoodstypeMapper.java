package com.mall.mapper;

import com.mall.po.TbGoodstype;
import com.mall.po.TbGoodstypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbGoodstypeMapper {
    int countByExample(TbGoodstypeExample example);

    int deleteByExample(TbGoodstypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbGoodstype record);

    int insertSelective(TbGoodstype record);

    List<TbGoodstype> selectByExample(TbGoodstypeExample example);

    TbGoodstype selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbGoodstype record, @Param("example") TbGoodstypeExample example);

    int updateByExample(@Param("record") TbGoodstype record, @Param("example") TbGoodstypeExample example);

    int updateByPrimaryKeySelective(TbGoodstype record);

    int updateByPrimaryKey(TbGoodstype record);
}