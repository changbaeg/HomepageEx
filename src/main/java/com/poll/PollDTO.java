package com.poll;

public class PollDTO {
	private int     rownum   ;
	private int num; // 설문 번호
	private String question; // 설문 내용
	private String sdate; // 투표 시작 날짜
	private String edate; // 투표 종료 날짜
	private String wdate; // 설문 작성 날짜
	private int type; // 중복투표 허용 여부
	private int active; // 설문 활성화 여부

	public PollDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PollDTO(int rownum, int num, String question, String sdate, String edate, String wdate, int type, int active) {
		super();
		this.rownum = rownum;
		this.num = num;
		this.question = question;
		this.sdate = sdate;
		this.edate = edate;
		this.wdate = wdate;
		this.type = type;
		this.active = active;
	}

	@Override
	public String toString() {
		return "PollDTO [rownum=" + rownum + ", num=" + num + ", question=" + question + ", sdate=" + sdate + ", edate="
				+ edate + ", wdate=" + wdate + ", type=" + type + ", active=" + active + "]";
	}
	
	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}
}
