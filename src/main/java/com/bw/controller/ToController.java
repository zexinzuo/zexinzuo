package com.bw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.entity.Torder;
import com.bw.service.ToService;
import com.bw.util.PageUtil;

@Controller
public class ToController {

	@Autowired
	private ToService toService;
	
	@RequestMapping("list")
	public String list(Model model,String cpage) {
		int count = this.toService.count();
		PageUtil page=new PageUtil(cpage, 3, count);
		List<Torder> list = this.toService.list(page);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		return "list";
	}
	
	@RequestMapping("add")
	public String add(Torder torder) {
		this.toService.add(torder);
		return "redirect:list";
	}
	
	@RequestMapping("del")
	public String del(String id) {
		this.toService.del(id);
		return "redirect:list";
	}
}
