package com.mycom.myapp.comment;


import java.util.List;

public interface CommentService {
	public int insertComment(CommentVO vo);
	public int deleteComment(int id);
	public CommentVO getComment(int seq);
	public List<CommentVO> getCommentList(int seq);
}

