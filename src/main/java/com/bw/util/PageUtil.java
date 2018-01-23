package com.bw.util;

public class PageUtil {

	//已知条件
	private String page;
	private int pageSize;
	private int count;
	//未知条件
	private int currentPage;//当前页
	private int prevPage;//上一页
	private int nextPage;//下一页
	private int lastPage;//末页
	private int startIndex;//起始索引
	
	public PageUtil(String page, int pageSize, int count){
		this.page = page;
		this.pageSize = pageSize;
		this.count = count;
		initCurrentPage();
		initPrevPage();
		initLastPage();
		initNextPage();
		initStartIndex();
	}
	
	//初始化当前页
	private void initCurrentPage(){
		page = page == null ? "1" : page;
		currentPage = Integer.parseInt(page);
	}
	
	//初始化上一页
	private void initPrevPage(){
		if(currentPage == 1){
			prevPage = 1;
		}else{
			prevPage = currentPage - 1;
		}
	}
	
	//初始化末页
	private void initLastPage(){
		lastPage = count / pageSize;
		if(count % pageSize != 0){
			lastPage += 1;
		}
	}
	
	//初始化下一页
	private void initNextPage(){
		if(currentPage == lastPage){
			nextPage = currentPage;
		}else{
			nextPage = currentPage + 1;
		}
	}
	
	private void initStartIndex() {
		startIndex = (currentPage - 1) * pageSize;
	}

	public String getPage() {
		return page;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getCount() {
		return count;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getLastPage() {
		return lastPage;
	}
	
	public int getStartIndex() {
		return startIndex;
	}
	
}
