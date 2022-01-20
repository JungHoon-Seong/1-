package com.company.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SqlSession sqlSession;
	public Member login(Member vo) {
		Member login = sqlSession.selectOne("Member.login" , vo);
		System.out.println("dao단 결과 값: "+ login);
		int loginResult = 0;
		if(login == null) {
			loginResult = 0;
			
		}else if(login != null) {
			loginResult = 1;
			
		}
		
		return login;
	}
	public int userjoin(Member vo) {
		int result = 0;
		result = sqlSession.insert("Member.insertMember",vo);
		return result;
	}
	

}
