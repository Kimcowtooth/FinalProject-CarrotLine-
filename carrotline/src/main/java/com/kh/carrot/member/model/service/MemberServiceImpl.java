package com.kh.carrot.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carrot.member.model.dao.MemberDao;
import com.kh.carrot.member.model.vo.Member;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(String userId) {
		
		Member loginUser = memberDao.loginMember(sqlSession, userId);
		
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		return 0;
	}

	@Override
	public int updateMember(Member m) {
		return 0;
	}

	@Override
	public int deleteMember(String userId) {
		return 0;
	}

	@Override
	public int checkId(String checkId) {
		return 0;
	}

}
