package com.kh.carrot.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.carrot.member.model.service.MemberService;
import com.kh.carrot.member.model.vo.Member;
@Controller // Controller  타입의 어노테이션을 붙여주면 빈 스캐닝을 통해 자동으로 bean을 등록한다.
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptpasswordEncoder;

	//회원가입동의폼 리턴
	@GetMapping("insertAgreeForm.me")
	public String AgreeForn() {
		
		return "member/memberEnrollAgree";
	}
	
	//회원가입폼 리턴
	@GetMapping("insertForm.me")
	public String enrollForm() {
		
		return "member/memberEnrollForm";
	}
	
	//로그인폼 리턴
	@GetMapping("loginForm.me")
	public String loginForm() {
		
		return "member/memberLoginForm";
	}

	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m,
							 HttpSession session,
							 ModelAndView mv) {
		
		Member loginUser = memberService.loginMember(m.getUserId());
		
		//관리자 비밀번호 1234를 한번 encode 출력문을 찍은 뒤 콘솔창에 나온 결과물로 디비 비밀번호를
		//바꾸면 된다. 때문에 디비 비밀번호 VARCHAR2를 100바이트로 해야함.
		System.out.println(bcryptpasswordEncoder.encode(m.getUserPwd()));

		if(loginUser != null && bcryptpasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		}else {
			mv.addObject("errorMsg", "로그인 실패");
			mv.setViewName("common/errorPage");
		}		
		return mv;
	}
	
	
	//로그아웃
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		
		session.removeAttribute("loginUser");	
		return "redirect:/";
	}

	
	//회원가입 등록
	@PostMapping("insert.me")
	public String insertMember(Member m,
							HttpSession session,
							Model model) {
		
		System.out.println(m);
		
		String encPwd = bcryptpasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		
		int result = memberService.insertMember(m);
	
		if(result>0) {
			session.setAttribute("loginUser", m);
			
			return "member/memberEnrollFinish";
		}else {
			model.addAttribute("errorMsg","회원가입 실패");
			
			return "common/errorPage";
		}
	}
	
	@RequestMapping("delete.me")
	public ModelAndView deleteMember(String userPwd,
									HttpSession session,
									ModelAndView mv) {
		
		//로그인 되어있는 회원정보의 비밀번호(암호화되어있는)를 
		//사용자에게 전달받은 비밀번호(평문) 과 일치하는지 matches 메소드를 이용하여 확인
		
		Member loginUser = (Member)session.getAttribute("loginUser"); 
		String userId = loginUser.getUserId(); 
		String loginUserPwd = loginUser.getUserPwd();
		
		if(bcryptpasswordEncoder.matches(userPwd, loginUserPwd)) { 

			int result = memberService.deleteMember(userId);
			
			if(result>0) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "그동안 서비스를 이용해주셔서 감사합니다.");
				mv.setViewName("redirect:/");
			}else {
				mv.addObject("errorMsg", "탈퇴 처리 실패");
				mv.setViewName("common/errorPage");
			}
		}else { 
		
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	
	//아이디 중복체크
	@ResponseBody
	@GetMapping("idCheck.me")
	@RequestMapping(value="idCheck.me",produces="text/html; charset=UTF-8")
	public String idCheck(String checkId) {
		
			
		System.out.println(checkId);
		
			Member m = memberService.loginMember(checkId);
			
			System.out.println(m);
			
			if(m!=null) { 
	
				return "NNNNN";
			}else {
			
				return "NNNNY";
			}
	}
	//회원가입 완료폼
	@RequestMapping("memberEnrollFinish.me")
	public String memberEnrollFinish(Member m
									,HttpSession session) {
		
		session.setAttribute("loginUser", m);
		
		return "member/memberEnrollFinish";
	}
	
	
	/*
	//아이디 중복체크
	@ResponseBody
//	@RequestMapping("idCheck.me")
	@RequestMapping(value="idCheck.me",produces="text/html; charset=UTF-8")
	public String idCheck(String checkId) {
	
		Member m = memberService.loginMember(checkId);
		
//		if(m!=null) { //조회된 회원이 있음(아이디 중복)
//
//			return "NNNNN";
//		}else {//조회된 회원이 없음(아이디 사용 가능) 
//		
//			return "NNNNY";
//		}
		
		return (m!=null) ? "하하" : "호호";
	}
	*/
	
//	@ResponseBody
//	@RequestMapping("idCheck.me")
//	public String idCheck(String checkId) {
		
//		int count = memberService.checkId(checkId);
		
//		String str = "";
//		
//		if(count>0) { // 사용불가
//			str="NNNNN";
//		}else { // 사용가능 
//			str="NNNNY";
//		}
//		
//		return str;
		
//		return count>0 ? "NNNNN" : "NNNNY";
		
	}
	
	
	
	
	