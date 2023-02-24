package com.kh.carrot.common.template;
import com.kh.carrot.common.model.vo.PageInfo;

public class Pagenation {
	public static PageInfo getPageinfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		
		int maxPage = (int)(Math.ceil(((double)listCount / boardLimit)));		
		
		int startPage = (currentPage-1)/pageLimit * pageLimit +1;
		
		int endPage = startPage + pageLimit -1;
		
		if(endPage>maxPage) {
			endPage = maxPage;
		}
		
//		PageInfo pi = new PageInfo(listCount,boardLimit,currentPage,pageLimit,maxPage,startPage,endPage);
//		return pi;
		
		return new PageInfo(listCount,currentPage,pageLimit,boardLimit,maxPage,startPage,endPage);
	}
}
