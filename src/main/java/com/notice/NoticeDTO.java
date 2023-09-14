package com.notice;

public class NoticeDTO {
	private int     rownum   ;
	private int  	noticeno ;
	private String  wname    ;
	private String  title    ;
	private String  content  ;
	private String  passwd   ;
	private int  	viewcnt  ;
	private String  wdate    ;
	public NoticeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDTO(int rownum, int noticeno, String wname, String title, String content, String passwd, int viewcnt, String wdate) {
		super();
		this.rownum = rownum;
		this.noticeno = noticeno;
		this.wname = wname;
		this.title = title;
		this.content = content;
		this.passwd = passwd;
		this.viewcnt = viewcnt;
		this.wdate = wdate;
	}
	
	@Override
	public String toString() {
		return "NoticeDTO [rownum=" + rownum + ", noticeno=" + noticeno + ", wname=" + wname + ", title=" + title
				+ ", content=" + content + ", passwd=" + passwd + ", viewcnt=" + viewcnt + ", wdate=" + wdate + "]";
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(int noticeno) {
		this.noticeno = noticeno;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
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
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
}
