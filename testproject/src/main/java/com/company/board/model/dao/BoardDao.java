package com.company.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.board.model.vo.Board;

@Repository("boardDao")
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	public int getListCount() {
		return sqlSession.selectOne("Board.getListCount");
	}

	public List<Board> selectBoardList(int currentPage, int PAGE_SIZE) {
		List<Board> blist;
		
		int startRow = (currentPage - 1) * PAGE_SIZE;		
		RowBounds row = new RowBounds(startRow, PAGE_SIZE);
		blist = sqlSession.selectList("Board.selectBoardList", null ,row);
		
		return blist;
		
	}

}
