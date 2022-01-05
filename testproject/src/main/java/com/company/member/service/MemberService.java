package com.company.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.member.model.dao.MemberDao;
import com.company.member.model.vo.Member;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	public Member login(Member vo) {
		return memberDao.login(vo);
	}

}
