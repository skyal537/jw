package com.study.post.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.exception.BizException;
import com.study.post.dao.IPostDao;
import com.study.post.vo.PostSearchVO;
import com.study.post.vo.PostVO;

@Service
public class PostServiceImpl implements IPostService {

	@Autowired
	private IPostDao postDao;

	
	/**
	 * 쪽지 목록 조회
	 * @param searchVO
	 * @return List<MemberVO>
	 * @throws BizException
	 */
	@Override
	public List<PostVO> getPostList(PostSearchVO searchVO) throws BizException {

		int rowCount = postDao.getPostCount(searchVO);
		searchVO.setTotalRowCount(rowCount);
		searchVO.setting();
		
		if (searchVO.getPostGubun() == 0) {
			return postDao.getArriveList(searchVO);

		}else {
			return postDao.getSendList(searchVO);
		}
	}

	
	/**
	 * 쪽지 확인
	 * @param postId
	 * @return PostVO
	 * @throws BizException
	 */
	@Override
	public PostVO getPostCheck(int postId) throws BizException {

		return postDao.getPostCheck(postId);
	}

	
	/**
	 * 쪽지 보내기(여러사람에게 보내기)
	 * @param post
	 * @return 
	 * @throws BizException
	 */
	@Override
	public void getPostSend(PostVO post) throws BizException {
		String[] arrives = post.getArriveMembers();
		for(String id : arrives) {
			post.setMemIdArrv(id);
			postDao.registPost(post);
		}
	}
	
	
	/**
	 * 쪽지보내기(한명한테 보내기)
	 * @param post
	 * @return 
	 * @throws BizException
	 */
	@Override
	public void getPost(PostVO post) throws BizException {

		postDao.registPost(post);
	}

	
	/**
	 * 쪽지 삭제하기
	 * @param post
	 * @return 
	 * @throws BizException
	 */
	@Override
	public void removePost(int[] postCheckRow) throws BizException {
		postDao.deletePost(postCheckRow);
	}

	
	

}
