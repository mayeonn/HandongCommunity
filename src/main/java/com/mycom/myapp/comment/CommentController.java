package com.mycom.myapp.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.board.BoardVO;

@Controller
public class CommentController {

	@Autowired
	CommentService commentService;
	
	@RequestMapping(value = "/comment/list/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model){
		model.addAttribute("list", commentService.getCommentList(id));
		return "commentlist";
	}

	@RequestMapping(value = "/comment/add", method = RequestMethod.GET)
	public String addComment() {
		return "addcommentform";
	}
	
	@RequestMapping(value = "/comment/addok", method = RequestMethod.POST)
	public String addCommentOK(CommentVO vo) {
		int i = commentService.insertComment(vo);
		if(i==0)
			System.out.println("댓글 추가 실패");
		else
			System.out.println("댓글 추가 성공!!!");
		return "redirect:../board/list";
	}
	
	
	@RequestMapping(value = "/comment/deleteok/{id}", method = RequestMethod.GET)
	public String deleteComment(@PathVariable("id") int id){
		int i = commentService.deleteComment(id);
		if(i==0)
			System.out.println("댓글 삭제 실패");
		else
			System.out.println("댓글 삭제 성공!!!");
		return "redirect:../../board/list";
	}
	
}
