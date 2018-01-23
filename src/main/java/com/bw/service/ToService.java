package com.bw.service;

import java.util.List;

import com.bw.entity.Torder;
import com.bw.util.PageUtil;

public interface ToService {

	List<Torder> list(PageUtil page);
	
	void add(Torder torder);
	
	int count();
	
	void del(String id);
}
