package com.study.post.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.study.common.vo.PagingVO;

//쪽지 페이징
public class PostSearchVO extends PagingVO{

	private String sender;  /*보낸사람*/
	
	private String arriver; /*받은사람*/

	private int postGubun; /*쪽지구분(0=받는쪽지, 1= 보낸쪽지)*/ /*int 디폴트가 0이라 처음 쪽지함으로 들어가면 받은쪽지함을 보여줌*/
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getArriver() {
		return arriver;
	}

	public void setArriver(String arriver) {
		this.arriver = arriver;
	}

	public int getPostGubun() {
		return postGubun;
	}

	public void setPostGubun(int postGubun) {
		this.postGubun = postGubun;
	}
	
	
    
}
