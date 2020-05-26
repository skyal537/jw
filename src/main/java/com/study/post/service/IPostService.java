package com.study.post.service;

import java.util.List;

import com.study.common.exception.BizException;
import com.study.post.vo.PostSearchVO;
import com.study.post.vo.PostVO;

public interface IPostService {
	
	/**
	 * 쪽지 목록 조회
	 * @param searchVO
	 * @return List<PostVO>
	 * @throws BizException
	 */
	public List<PostVO> getPostList(PostSearchVO searchVO) throws BizException;

	/**
	 * 쪽지 확인하기
	 * @param postId
	 * @return PostVO
	 * @throws BizException 
	 */
	public PostVO getPostCheck(int postId) throws BizException ;


	/**
	 *쪽지 보내기(여러사람에게 보내기)
	 * @param post
	 * @return 
	 * @throws BizException
	 */
	public void getPostSend(PostVO post) throws BizException;
		
	
	/**
	 *  쪽지보내기(한명한테 보내기)
	 * @param post
	 * @return 
	 * @throws BizException
	 */
	public void getPost(PostVO post) throws BizException;
	
	
	/**
	 * 쪽지 삭제하기
	 * @param post
	 * @throws BizException
	 */
	public void removePost(int[] postCheckRow) throws BizException;

	
	
}
