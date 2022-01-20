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

	public int insertBoardwithImg(Board bvo) {
		int result = 0;
		result = sqlSession.insert("Board.insertContentwithImg",bvo);
		return result;
	}

	public int insertBoard(Board bvo) {
		int result = 0;
		result = sqlSession.insert("Board.insertContent",bvo);
		return result;
	}
	
	public List<Board> selectBoardView(int brno) {
		List<Board> brlist;
		
		brlist = sqlSession.selectList("Board.selectContentView",brno);
		return brlist;
		
	}
	
	public int updateBoard(Board bvo) {
		int result = 0;
		result = sqlSession.update("Board.updateContent",bvo);		
		return result;
	}
	public int updateBoardwithImg(Board bvo) {
		int result = 0;
		result = sqlSession.update("Board.updateContentwithImg",bvo);		
		return result;
	}

	public void boardPostviewUpdate(int brno) {
		sqlSession.update("Board.boardPostviewUpdate", brno);		
	}

	public int deleteBoard(int brno) {
		int result = 0;
		result = sqlSession.delete("Board.deleteBoard",brno);
		if(result == 0) {
			System.out.println("dao단 오류 발생");
		}
		return result;
	}

	public List<Board> selectBoardListAll() {
		List<Board> listResult = sqlSession.selectList("Board.selectBoardListAll");
		return listResult;
	}

}
