package com.bw.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.dao.ToDao;
import com.bw.entity.Torder;
import com.bw.util.PageUtil;

@Service
public class ToServiceImpl implements ToService{

	@Autowired
	private ToDao toDao;

	@Override
	public List<Torder> list(PageUtil page) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		return this.toDao.list(map);
	}

	@Override
	public void add(Torder torder) {
		// TODO Auto-generated method stub
		this.toDao.add(torder);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		this.toDao.count();
		return 0;
	}

	@Override
	public void del(String id) {
		// TODO Auto-generated method stub
		this.toDao.del(id);
	}


}
