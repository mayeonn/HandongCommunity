package com.mycom.myapp.todolist;

import java.util.Date;

public class TodoListVO {
	private int seq;
	private String title;
	private String content;
	private Date regdate;
	private String due_date;
	private Integer is_complete;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getcontent() {
		return content;
	}

	public void setcontent(String desc) {
		this.content = desc;
	}

	public Date getregdate() {
		return regdate;
	}

	public void setregdate(Date current_date) {
		this.regdate = current_date;
	}

	public String getDue_date() {
		return due_date;
	}

	public void setDue_date(String due_date) {
		this.due_date = due_date;
	}

	public Integer getIs_complete() {
		return is_complete;
	}

	public void setIs_complete(Integer is_complete) {
		this.is_complete = is_complete;
	}
}
