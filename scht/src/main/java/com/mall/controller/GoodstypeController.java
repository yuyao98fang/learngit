package com.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mall.po.TbGoods;
import com.mall.po.TbGoodstype;
import com.mall.service.TbGoodstypeService;

@Controller
@RequestMapping(value="/goodstype")
public class GoodstypeController {
	@Autowired
    private TbGoodstypeService tbGoodstypeService;
    
	@RequestMapping(value="/add",method={RequestMethod.GET,RequestMethod.POST})
	public String add(Model model,TbGoodstype tbGoodstype){
		TbGoodstype temp = tbGoodstypeService.findByName(tbGoodstype.getName());
		
		if(temp!=null){
			model.addAttribute("message", "该商品类型已经添加");
			return "msg";
		}
		
		tbGoodstypeService.add(tbGoodstype);
		model.addAttribute("message", "添加成功");
		return "msg";
	}
	
	@RequestMapping(value="/delete",method={RequestMethod.GET,RequestMethod.POST})
	public String delete(Model model,TbGoodstype tbGoodstype){
		tbGoodstypeService.delete(tbGoodstype.getId());
		
		return "redirect:/goodstype/findAll";
	}
	
	@RequestMapping(value="/findAll",method={RequestMethod.GET,RequestMethod.POST})
	public String findAll(Model model){
		List<TbGoodstype> list = tbGoodstypeService.findAll();
		model.addAttribute("list", list);
		return "type/list";
	}
	
	@RequestMapping(value="/addV",method={RequestMethod.GET,RequestMethod.POST})
	public String addV(Model model){
		List<TbGoodstype> list = tbGoodstypeService.findAll();
		model.addAttribute("list", list);
		return "goods/add";
	}
	
	
	@RequestMapping(value="/update",method={RequestMethod.GET,RequestMethod.POST})
	public String update(Model model,TbGoodstype tbGoodstype){
		tbGoodstypeService.update(tbGoodstype);
		model.addAttribute("message", "修改成功");
		return "msg";
	}
	
	@RequestMapping(value="/findById",method={RequestMethod.GET,RequestMethod.POST})
	public String findById(Model model,int id){
		TbGoodstype tbGoodstype = tbGoodstypeService.findById(id);
		model.addAttribute("goodstype", tbGoodstype);
		return "type/update";
	}
}
