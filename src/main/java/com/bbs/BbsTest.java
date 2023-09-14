package com.bbs;

import java.util.Iterator;
import java.util.List;

public class BbsTest {

	public static void main(String[] args) {
		
		BbsDAO dao = new BbsDAO();
		
		//create(dao);
		
		list(dao);

	}

	private static void list(BbsDAO dao) {
		List<BbsDTO> list = dao.list(null);
		Iterator<BbsDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			BbsDTO dto = iter.next();
			
			p(dto);
		}
		
		
	}

	private static void p(BbsDTO dto) {
		p("번호:"+dto.getBbsno());
		p("이름:"+dto.getWname());
		p("제목:"+dto.getTitle());
		p("grpno:"+dto.getGrpno());
		p("indent:"+dto.getIndent());
		p("ansnum:"+dto.getAnsnum());
		p("--------------------------");
		
		
	}

	private static void create(BbsDAO dao) {
		// TODO Auto-generated method stub
		BbsDTO dto = new BbsDTO();
		dto.setWname("홍길동");
		dto.setContent("게시판 실습");
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
