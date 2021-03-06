package com.study.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.member.vo.MemberSearchVO;
import com.study.member.vo.MemberVO;

@Mapper
public interface IMemberDao {

	/**
	 * 회원 전체 수
	 * @param serachVO
	 * @return int
	 */
	public int getMemberMgCount(MemberSearchVO searchVO);

	/**
	 * 회원 테이블 목록 조회
	 * @param serachVO
	 * @return List<MemberVO> 회원 목록
	 */
	public List<MemberVO> getMemberMgList(MemberSearchVO searchVO);


	/**
	 * 요청한<b> 회원아이디</b>에 해당하는 회원을 조회한다.
	 * @param memId
	 * @return MemberVO
	 */
	public MemberVO getMember(String memId);


	/**
	 *  회원 등록 <br>
	 * @param member
	 * @return int
	 */
	public int registMember(MemberVO member);


	/**
	 *  회원 정보수정 <br>
	 *  비밀번호는 변경되지 않음
	 * @param member
	 * @return int
	 */
	public int updateMember(MemberVO member);


	/**
	 *  회원 탈퇴 <br>
	 *  회원 테이블의 회원 삭제 여부(mem_del_yn)를  "Y"로 변경
	 * @param member
	 * @return int
	 */
	public int deleteMember(MemberVO member);

}