package com.company.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.board.model.dao.BoardDao;
import com.company.board.model.vo.Board;
import com.company.reply.model.vo.Reply;

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

	public int insertBoardwithImg(Board bvo) {
		return boardDao.insertBoardwithImg(bvo);
	}

	public int insertBoard(Board bvo) {
		return boardDao.insertBoard(bvo);
	}
	
	public List<Board> selectBoardView(int brno) {
		List<Board> vo = null;
		try {
			vo = boardDao.selectBoardView(brno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	

	public int updateBoard(Board bvo) {
		return boardDao.updateBoard(bvo);
	}


	public void boardPostviewUpdate(int brno) {
		boardDao.boardPostviewUpdate(brno);
		
	}

	public void deleteBoard(int brno) {
		boardDao.deleteBoard(brno);
		
	}

	public List<Board> selectBoardListAll() {
		return boardDao.selectBoardListAll();
	}

	public List<Reply> selectReplyList(Reply rvo) {
		return boardDao.selectReplyList(rvo);
	}

	

}
