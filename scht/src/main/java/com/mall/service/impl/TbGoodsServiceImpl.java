package com.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.TbGoodsMapper;
import com.mall.mapper.TbGoodstypeMapper;
import com.mall.po.TbGoods;
import com.mall.po.TbGoodsExample;
import com.mall.po.TbGoodstype;
import com.mall.service.TbGoodsService;

@Service
public class TbGoodsServiceImpl implements TbGoodsService {
	@Autowired
    private TbGoodsMapper tbGoodsMapper;
	
	@Autowired
    private TbGoodstypeMapper tbGoodstypeMapper;
	
	@Override
	public void add(TbGoods tbGoods) {
		tbGoodsMapper.insert(tbGoods);
	}

	@Override
	public void delete(int id) {
		tbGoodsMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void update(TbGoods record) {
		tbGoodsMapper.updateByPrimaryKeySelective(record);
		

	}

	@Override
	public List<TbGoods> findAll() {
		List<TbGoods> list = tbGoodsMapper.selectByExample(null);
		if(list!=null&&list.size()>0){
			for(TbGoods item:list){
				TbGoodstype tbGoodstype = tbGoodstypeMapper.selectByPrimaryKey(item.getTypeid());
				item.setTypename(tbGoodstype.getName());
			}
		}
		
		return list;
	}

	@Override
	public TbGoods findByName(String name) {
		TbGoodsExample example = new TbGoodsExample();
		example.createCriteria().andNameEqualTo(name);
		
		List<TbGoods> list = tbGoodsMapper.selectByExample(example);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public TbGoods findById(int id) {
		TbGoods tbGoods = tbGoodsMapper.selectByPrimaryKey(id);
		return tbGoods;
	}

}
