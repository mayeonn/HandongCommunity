package com.mycom.myapp.todolist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TodoListDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertTodoList(TodoListVO vo) {
		int result = sqlSession.insert("TodoList.insertTodoList", vo);
		return result;
	}
	
	public int deleteTodoList(int id) {
		int result = sqlSession.insert("TodoList.deleteTodoList", id);
		return result;
	}
	
	public int updateTodoList(TodoListVO vo) {
		int result = sqlSession.insert("TodoList.updateTodoList", vo);
		return result;
	}
	
	public TodoListVO getTodoList(int seq) {
		TodoListVO one = sqlSession.selectOne("TodoList.getTodoList", seq);
		return one;
	}
	
	public List<TodoListVO> getTodoListList(){
		List<TodoListVO> list = sqlSession.selectList("TodoList.getTodoListList");
		return list;
	}
	
	public int checkTodoList(int seq) {
		int result = sqlSession.insert("TodoList.checkTodoList", seq);
		return result;
	}
	
}
