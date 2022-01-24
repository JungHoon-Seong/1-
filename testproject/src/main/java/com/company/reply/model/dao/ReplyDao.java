package com.company.reply.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.reply.model.vo.Reply;

@Repository("replyDao")
public class ReplyDao {
	
	@Autowired
	private SqlSession sqlSession;

	public int insertReply(Reply vo) {
		int result = 0;
		result = sqlSession.insert("Reply.insertReply",vo);
		return result;
	}

	public List<Reply> selectReplyList(Reply rvo) {
		List<Reply> replylist = null;
		//System.out.println("dao단에서 확인한 rvo 값"+ rvo);
		replylist = sqlSession.selectList("Reply.selectReplyList",rvo);
		//System.out.println("dao단에서 확인한 댓글리스트"+ replylist);
		return replylist;
	}

	public int updateReply(Reply vo) {
		int result = 0;
		result = sqlSession.update("Reply.updateReply", vo);
		return result;
	}

	public int deleteReply(Reply vo) {
		int result = 0;
		System.out.println("삭제 실행전 dao단 값" + vo);
		result = sqlSession.delete("Reply.deleteReply", vo);
		return result;
	}

}
