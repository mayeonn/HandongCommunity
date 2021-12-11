package com.mycom.myapp.todolist;

import java.util.List;

public interface TodoListService {
	public int insertTodoList(TodoListVO vo);
	public int deleteTodoList(int id);
	public int updateTodoList(TodoListVO vo);
	public TodoListVO getTodoList(int seq);
	public List<TodoListVO> getTodoListList();
}
