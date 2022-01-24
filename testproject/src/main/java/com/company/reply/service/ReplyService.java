package com.company.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.reply.model.dao.ReplyDao;
import com.company.reply.model.vo.Reply;

@Service
public class ReplyService {

	@Autowired
	ReplyDao replyDao;
	
	public int insertReply(Reply vo) {
		return replyDao.insertReply(vo);
	}


	public List<Reply> selectReplyList(Reply rvo) {
		//System.out.println("rpely 조회 서비스단 지나감");
		return replyDao.selectReplyList(rvo);
	}


	public int updateReply(Reply vo) {
		return replyDao.updateReply(vo);
	}


	public int deleteReply(Reply vo) {
		return replyDao.deleteReply(vo);
	}

}
