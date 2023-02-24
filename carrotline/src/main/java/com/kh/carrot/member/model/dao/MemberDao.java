package com.kh.carrot.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carrot.member.model.vo.Member;



@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, String userId) {
		
		return sqlSession.selectOne("memberMapper.loginMember", userId);
	}

}
