package com.mycom.myapp.todolist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TodoListController {

	@Autowired
	TodoListService todolistService;

	@RequestMapping(value = "/todolist/list", method = RequestMethod.GET)
	public String TodoListList(Model model) {
		model.addAttribute("list", todolistService.getTodoListList());
		return "todolistlist";
	}

	@RequestMapping(value = "/todolist/add", method = RequestMethod.GET)
	public String addTodoList() {
		return "addtodolistform";
	}
	
	@RequestMapping(value = "/todolist/addok", method = RequestMethod.POST)
	public String addTodoListOK(TodoListVO vo) {
		int i = todolistService.insertTodoList(vo);
		if(i==0)
			System.out.println("할일 추가 실패");
		else
			System.out.println("할일 추가 성공!!!");
		return "redirect:todolistlist";
	}
	
	@RequestMapping(value = "/todolist/editform/{id}", method = RequestMethod.GET)
	public String editTodoList(@PathVariable("id") int id, Model model){
		TodoListVO todolistVO = todolistService.getTodoList(id);
		model.addAttribute("todolistVO", todolistVO);
		return "edittodolistform";
	}
	
	@RequestMapping(value = "/todolist/editok", method = RequestMethod.POST)
	public String editTodoListOK(TodoListVO vo) {
		int i = todolistService.updateTodoList(vo);
		if(i==0)
			System.out.println("할일 수정 실패");
		else
			System.out.println("할일 수정 성공!!!");
		return "redirect:todolistlist";
	}
	
	@RequestMapping(value = "/todolist/deleteok/{id}", method = RequestMethod.GET)
	public String deleteTodoList(@PathVariable("id") int id){
		int i = todolistService.deleteTodoList(id);
		if(i==0)
			System.out.println("할일 삭제 실패");
		else
			System.out.println("할일 삭제 성공!!!");
		return "redirect:../todolistlist";
	}
	
}
