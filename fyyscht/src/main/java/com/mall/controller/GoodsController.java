package com.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mall.po.TbGoods;
import com.mall.po.TbGoodstype;
import com.mall.service.TbGoodsService;
import com.mall.service.TbGoodstypeService;

@Controller
@RequestMapping(value="/goods")
public class GoodsController {
	@Autowired
    private TbGoodsService tbGoodsService;
	
	@Autowired
    private TbGoodstypeService tbGoodstypeService;
	
	@RequestMapping(value="/add",method={RequestMethod.GET,RequestMethod.POST})
	public String add(Model model,TbGoods tbGoods){
		TbGoods temp = tbGoodsService.findByName(tbGoods.getName());
		
		if(temp!=null){
			model.addAttribute("message", "该商品已经添加");
			return "msg";
		}
		
		tbGoodsService.add(tbGoods);
		model.addAttribute("message", "添加成功");
		return "msg";
	}
	
	@RequestMapping(value="/delete",method={RequestMethod.GET,RequestMethod.POST})
	public String delete(Model model,TbGoods tbGoods){
		tbGoodsService.delete(tbGoods.getId());
		
		return "redirect:/goods/findAll";
	}
	
	@RequestMapping(value="/findAll",method={RequestMethod.GET,RequestMethod.POST})
	public String findAll(Model model){
		List<TbGoods> list = tbGoodsService.findAll();
		model.addAttribute("list", list);
		return "goods/list";
	}
	
	@RequestMapping(value="/update",method={RequestMethod.GET,RequestMethod.POST})
	public String update(Model model,TbGoods tbGoods){
		tbGoodsService.update(tbGoods);
		model.addAttribute("message", "修改成功");
		return "msg";
	}
	
	@RequestMapping(value="/findById",method={RequestMethod.GET,RequestMethod.POST})
	public String findById(Model model,int id){
		TbGoods goods = tbGoodsService.findById(id);
		model.addAttribute("goods", goods);
		
		List<TbGoodstype> list = tbGoodstypeService.findAll();
		model.addAttribute("list", list);
		return "goods/update";
	}
}
