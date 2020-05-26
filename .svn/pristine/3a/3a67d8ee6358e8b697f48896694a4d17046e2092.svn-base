package com.study.post.vo;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import org.apache.commons.lang3.builder.ToStringBuilder;

//쪽지
@SuppressWarnings("serial")
public class PostVO implements Serializable {

    private int postId;			/*쪽지ID*/
    private String postContent;		/* 내용*/
    
    @NotEmpty(message = "제목은 필수입니다.")    
    private String postTitle;		/*제목*/
    
    private String memIdSend;		/*보낸이*/
    private String memIdArrv;		/*받는이*/
    
    private String postRegDate;		/*보낸날짜*/
    
    
    private String[] arriveMembers;   /* 받는사람들 (다중 선택 쪽지쓰기) */
    
    @Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

    
    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPostContent() {
        return postContent;
    }

    public void setPostContent(String postContent) {
        this.postContent = postContent;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getMemIdSend() {
        return memIdSend;
    }

    public void setMemIdSend(String memIdSend) {
        this.memIdSend = memIdSend;
    }

    public String getMemIdArrv() {
        return memIdArrv;
    }

    public void setMemIdArrv(String memIdArrv) {
        this.memIdArrv = memIdArrv;
    }

	public String getPostRegDate() {
		return postRegDate;
	}

	public void setPostRegDate(String postRegDate) {
		this.postRegDate = postRegDate;
	}


	public String[] getArriveMembers() {
		return arriveMembers;
	}


	public void setArriveMembers(String[] arriveMembers) {
		this.arriveMembers = arriveMembers;
	}

}
