package com.study.member.service;

import java.util.List;

import com.study.common.exception.BizException;
import com.study.member.vo.MemberSearchVO;
import com.study.member.vo.MemberVO;

public interface IMemberService {

	/**
	 * 회원 목록 조회
	 * @param searchVO
	 * @return List<MemberVO>
	 * @throws BizException
	 */
	public List<MemberVO> getMemberMgList(MemberSearchVO searchVO) throws BizException;

	/**
	 * 요청한 <b>회원아이디</b>에 해당하는 회원을 조회한다. <br>
	 * 	해당 회원이 존재하지 않는 경우 BizNotFoundException 발생
	 * @param memId
	 * @return MemberVO
	 * @throws BizException <br>
	 */
	public MemberVO getMember(String memId) throws BizException ;

	/**
	 * 회원등록 <br>
	 * 	중복이 발생하면 BizDuplicateException 발생
	 * @param member
	 * @throws BizException
	 */
	public void registMember(MemberVO member) throws BizException ;

	/**
	 * 회원정보 수정 <br>
	 * 비밀번호는 변경되지 않음
	 * 	회원이 존재하지 않으면 BizNotFoundException 발생
	 * @param member
	 * @throws BizException
	 *
	 */
	public void modifyMember(MemberVO member) throws BizException ;

	/**
	 * 회원탈퇴 <br>
	 * 회원테이블의 mem_del_yn을 "Y" 로 변경
	 * 	회원이 존재하지 않으면 BizNotFoundException 발생
	 * @param member
	 * @throws BizException
	 */
	public void removeMember(MemberVO member) throws BizException;
	
	

}