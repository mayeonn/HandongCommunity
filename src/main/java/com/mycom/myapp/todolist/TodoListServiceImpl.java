package com.mycom.myapp.todolist;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TodoListServiceImpl implements TodoListService{
	@Autowired
	TodoListDAO todolistDAO;
	
	public int insertTodoList(TodoListVO vo) {
		return todolistDAO.insertTodoList(vo);
	}
	public int deleteTodoList(int id) {
		return todolistDAO.deleteTodoList(id);
	}
	public int updateTodoList(TodoListVO vo) {
		return todolistDAO.updateTodoList(vo);
	}
	public TodoListVO getTodoList(int seq) {
		return todolistDAO.getTodoList(seq);
	}
	public List<TodoListVO> getTodoListList(){
		return todolistDAO.getTodoListList();
	}
	public int checkTodoList(int seq) {
		return todolistDAO.checkTodoList(seq);
	}
}


