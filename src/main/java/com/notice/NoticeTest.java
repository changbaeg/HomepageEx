package com.notice;

import java.util.Iterator;
import java.util.List;

public class NoticeTest {

	public static void main(String[] args) {
		
		NoticeDAO dao = new NoticeDAO();
		
		create(dao);
		
		//list(dao);

	}

	private static void list(NoticeDAO dao) {
		List<NoticeDTO> list = dao.list(null);
		Iterator<NoticeDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			NoticeDTO dto = iter.next();
			
			p(dto);
		}
		
		
	}

	private static void p(NoticeDTO dto) {
		p("번호:"+dto.getNoticeno());
		p("이름:"+dto.getWname());
		p("제목:"+dto.getTitle());
		p("--------------------------");
		
		
	}

	private static void create(NoticeDAO dao) {
		// TODO Auto-generated method stub
		NoticeDTO dto = new NoticeDTO();
		dto.setWname("홍길동");
		dto.setContent("공지사항 실습");
		dto.setTitle("제목");
		dto.setPasswd("1234");
		
		if(dao.create(dto)) {
			p("성공");
		}else {
			p("실패");
		}
	}

	private static void p(String string) {
		System.out.println(string);
		
	}



}
