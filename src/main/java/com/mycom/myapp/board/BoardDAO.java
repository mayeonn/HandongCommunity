package com.mycom.myapp.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}
	
	public int deleteBoard(int id) {
		int result = sqlSession.insert("Board.deleteBoard", id);
		return result;
	}
	
	public int updateBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.updateBoard", vo);
		return result;
	}
	
	public BoardVO getBoard(int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		
		for(BoardVO vo : list) {
			sqlSession.insert("Board.countNumOfComments", vo);
		}
		
		return list;
	}
	
	public int addLike(int id) {
		int result = sqlSession.insert("Board.addLike", id);
		return result;
	}
	
}
