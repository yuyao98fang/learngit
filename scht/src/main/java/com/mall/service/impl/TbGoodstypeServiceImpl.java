package com.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.TbGoodstypeMapper;
import com.mall.po.TbGoodstype;
import com.mall.po.TbGoodstypeExample;
import com.mall.service.TbGoodstypeService;

@Service
public class TbGoodstypeServiceImpl implements TbGoodstypeService {
	@Autowired
    private TbGoodstypeMapper tbGoodstypeMapper;
    
    
	@Override
	public void add(TbGoodstype tbGoodstype) {
		tbGoodstypeMapper.insert(tbGoodstype);

	}

	@Override
	public void delete(int id) {
		tbGoodstypeMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void update(TbGoodstype record) {
		tbGoodstypeMapper.updateByPrimaryKeySelective(record);

	}

	@Override
	public List<TbGoodstype> findAll() {
		// TODO Auto-generated method stub
		return tbGoodstypeMapper.selectByExample(null);
	}

	@Override
	public TbGoodstype findByName(String name) {
		TbGoodstypeExample example = new TbGoodstypeExample();
		example.createCriteria().andNameEqualTo(name);
		List<TbGoodstype> list = tbGoodstypeMapper.selectByExample(example);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public TbGoodstype findById(int id) {
		
		return tbGoodstypeMapper.selectByPrimaryKey(id);
	}

}
