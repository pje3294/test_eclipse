package model.message;

import java.sql.Date;

public class MessageVO {
	private int mnum;
	private String writer;
	private String title;
	private String content;
	private Date wdate;
	
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
	@Override
	public String toString() {
		return "MessageVO [mnum=" + mnum + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", wdate=" + wdate + "]";
	}
	

	/*mnum int primary key,
	writer varchar(15) not null,
	title varchar(15) not null,
	content varchar(50) not null,
	wdate date default sysdate*/
	
	
}
