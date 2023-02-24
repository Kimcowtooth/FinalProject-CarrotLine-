package com.kh.carrot.member.model.service;

import com.kh.carrot.member.model.vo.Member;

public interface MemberService {
	
	//로그인 서비스 select
	Member loginMember(String userId);
	//회원가입 서비스 insert
	int insertMember(Member m);
	//회원 정보 수정 서비스 update
	int updateMember(Member m);
	//회원 탈퇴 서비스 update/delete
	int deleteMember(String userId);
	//아이디 중복체크 서비스 select
	int checkId(String checkId);
	
	

}
