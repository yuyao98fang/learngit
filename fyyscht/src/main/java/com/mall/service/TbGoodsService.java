package com.mall.service;

import java.util.List;

import com.mall.po.TbGoods;

public interface TbGoodsService {
    public void add(TbGoods tbGoods);
    
    public void delete(int id);
    
    public void update(TbGoods record);
    
    public List<TbGoods> findAll();
    
    public TbGoods findByName(String name);
    
    public TbGoods findById(int id);
}
