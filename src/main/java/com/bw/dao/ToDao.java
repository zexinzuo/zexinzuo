package com.bw.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.bw.entity.Torder;

@Mapper
public interface ToDao {

	List<Torder> list(Map<String, Object> map);
	
	void add(Torder torder);
	
	int count();
	
	void del(String id);
}
