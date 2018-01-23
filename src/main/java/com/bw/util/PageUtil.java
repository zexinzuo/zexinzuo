package com.bw.util;

public class PageUtil {

	//��֪����
	private String page;
	private int pageSize;
	private int count;
	//δ֪����
	private int currentPage;//��ǰҳ
	private int prevPage;//��һҳ
	private int nextPage;//��һҳ
	private int lastPage;//ĩҳ
	private int startIndex;//��ʼ����
	
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
	
	//��ʼ����ǰҳ
	private void initCurrentPage(){
		page = page == null ? "1" : page;
		currentPage = Integer.parseInt(page);
	}
	
	//��ʼ����һҳ
	private void initPrevPage(){
		if(currentPage == 1){
			prevPage = 1;
		}else{
			prevPage = currentPage - 1;
		}
	}
	
	//��ʼ��ĩҳ
	private void initLastPage(){
		lastPage = count / pageSize;
		if(count % pageSize != 0){
			lastPage += 1;
		}
	}
	
	//��ʼ����һҳ
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
