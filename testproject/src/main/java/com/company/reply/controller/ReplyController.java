package com.company.reply.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.reply.model.vo.Reply;
import com.company.reply.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	private ReplyService replyService;
	
	
	@RequestMapping(value="reply", method = RequestMethod.POST)
	@ResponseBody
	public int InsertReply(
			@RequestParam(value="userId") String userId,
			@RequestParam(value="postNo") int postNo,
			@RequestParam(value="replyContent") String Content,
			HttpServletResponse response) {
		
		int result = 0;
		
		try {
			
			Reply vo = new Reply(userId,postNo,Content);
			result = replyService.insertReply(vo);
//			System.out.println("ajax 컨트롤단 결과" + vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		
		
		return result;
	}
	
	@RequestMapping(value="reply-update", method = RequestMethod.POST)
	@ResponseBody
	public int updateReply(
			@RequestParam(value="commentNo") int commentNo,
			@RequestParam(value="userId") String userId,
			@RequestParam(value="postNo") int postNo,
			@RequestParam(value="replyContent") String Content,
			HttpServletResponse response) {
		
	int result = 0;
	
	try {
		Reply vo = new Reply(commentNo,userId,postNo,Content);
		result = replyService.updateReply(vo);
		System.out.println("ajax 컨트롤단 결과" + vo);
	} catch (Exception e) {
		e.printStackTrace();
		result = 0;
	}
		
	return result;
	}
	
	@RequestMapping(value="reply-delete", method = RequestMethod.POST)
	@ResponseBody
	public int deleteReply(
			@RequestParam(value="commentNo") int commentNo,
			@RequestParam(value="userId") String userId) {
		int result = 0;
		
		System.out.println("삭제실행 컨트롤러단 진입");
		try {
			Reply vo = new Reply(commentNo, userId);
			result = replyService.deleteReply(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
}
