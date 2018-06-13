package com.mall.service;

import java.util.List;

import com.mall.po.TbGoods;
import com.mall.po.TbGoodstype;

public interface TbGoodstypeService {
	 public void add(TbGoodstype tbGoodstype);
	    
	    public void delete(int id);
	    
	    public void update(TbGoodstype record);
	    
	    public List<TbGoodstype> findAll();
	    
	    public TbGoodstype findByName(String name);
	    
	    public TbGoodstype findById(int id);
}
