package com.company.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.company.board.model.vo.Board;
import com.company.board.service.BoardService;


@Controller
public class BoardController {
	
	@Autowired 
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value="board", method = RequestMethod.GET)
	public ModelAndView selectBoardList(ModelAndView mv,String clickedPage, 
			@RequestParam(value = "p", defaultValue = "1")String pageNum,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		
		logger.info("게시물 페이지에 온걸 환영하는 logger");
		//System.out.println("컨트롤러 최초접근");
		final int PAGE_SIZE = 5;
		final int PAGE_BLOCK = 3;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount = boardService.getListCount();
			
			
		} catch (Exception e) {
			mv.addObject("msg", "게시판 오류발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}
		
		if (pageNum != null) {
			clickedPage = pageNum;
		}
		
		int startPage = ((int)((double)currentPage / PAGE_SIZE + 0.9) - 1) * PAGE_SIZE  + 1;
		
		pageCount = (listCount / PAGE_SIZE) + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int endPage = startPage + PAGE_SIZE - 1;
		if(endPage > pageCount) endPage=pageCount;
		int maxPage = (int)((double)listCount / PAGE_SIZE + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) > maxPage){
				currentPage = maxPage;
			}else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		if (currentPage % PAGE_BLOCK == 0) {
			startPage = (currentPage / PAGE_BLOCK - 1) * PAGE_BLOCK + 1;
		}else {
			startPage = (currentPage / PAGE_BLOCK) * PAGE_BLOCK + 1;
		}
		
		
		List<Board> blist = null;
				
		try {
			blist = boardService.selectBoardList(currentPage, PAGE_SIZE);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("blist",blist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageCount",pageCount);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
//		if (memberId != null) {
//			mv.addObject("memberId",memberId.getHouseNum());
//		}
		//System.out.println("컨트롤러 마지막접근");
		mv.setViewName("/board/board_list");
		
		return mv;
	}
	

}
