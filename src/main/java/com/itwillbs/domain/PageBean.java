package com.itwillbs.domain;

public class PageBean {
	
	private int pageSize;
	private String pageNum;
	private int currentPage;
	private int startRow;
	
	private int count;
	private int pageBlock;
	private int startPage;
	private int endPage;
	private int pageCount;
	
	private String id;
	private String category;
	private String seller_id;
	private char is_selling = 'Y';	
	private String sender;
	
	
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public char getIs_selling() {
		return is_selling;
	}
	public void setIs_selling(char is_selling) {
		this.is_selling = is_selling;
	}
	public String getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getPageNum() {
		return pageNum;
	}
	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
		// pageBlock, startPage, endPage, pageCount구하기
		init();
	}
	public void init() {
		pageBlock=10;
		startPage=(currentPage-1)/pageBlock*pageBlock+1;
		endPage=startPage+pageBlock-1;
		pageCount=count/pageSize+(count%pageSize==0?0:1);
		
		 if(endPage > pageCount){
		 	endPage = pageCount;
		 }
	}
	
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	
	
}
