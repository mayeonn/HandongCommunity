package com.mycom.myapp.comment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insertComment(CommentVO vo) {
		int result = sqlSession.insert("Comment.insertComment", vo);
		return result;
	}
	
	public int deleteComment(int id) {
		int result = sqlSession.insert("Comment.deleteComment", id);
		return result;
	}
	
	public CommentVO getComment(int seq) {
		CommentVO one = sqlSession.selectOne("Comment.getComment", seq);
		return one;
	}
	
	public List<CommentVO> getCommentList(){
		List<CommentVO> list = sqlSession.selectList("Comment.getCommentList");
		return list;
	}
	
}
