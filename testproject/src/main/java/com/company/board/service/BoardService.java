package com.company.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.board.model.dao.BoardDao;
import com.company.board.model.vo.Board;

@Service
public class BoardService {

	@Autowired
	private BoardDao boardDao;
	
	
	public int getListCount() {
		return boardDao.getListCount();
	}

	public List<Board> selectBoardList(int currentPage, int PAGE_SIZE) {
		
		List<Board> vo = null;
		try {
			vo = boardDao.selectBoardList(currentPage, PAGE_SIZE);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return vo;
	}

}
