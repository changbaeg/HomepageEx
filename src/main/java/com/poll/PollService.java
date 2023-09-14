package com.poll;

import java.util.Map;
import java.util.Vector;

public class PollService {

	private PollDAO dao;
	private PollitemDAO idao;

	public PollService() {
		dao = new PollDAO();
		idao = new PollitemDAO();
	}

	public boolean delete(PollDTO dto, PollitemDTO idto) {
		boolean flag = false;
		
		/* ??? */

		return flag;
	}
	
	public Vector<PollDTO> getList(Map map) {

		Vector<PollDTO> list = dao.getList(map);

		return list;
	}

	public int total(String col, String word) {
		int total = dao.total(col, word);

		return total;
	}

	public boolean create(PollDTO dto, PollitemDTO idto) {
		boolean flag = false;

		try {
			dao.create(dto);
			idto.setNum(dao.getMaxNum()); // 생성된 pk값 받아오기
			int size = idto.getItems().length;
			for (int i = 0; i < size; i++) {
				if (idto.getItems()[i].length() > 0) {
					idto.setItem(idto.getItems()[i]);
					idao.create(idto);
				}
			}

			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;
	}

	public int getMaxNum() {
		int num = dao.getMaxNum();

		return num;
	}

	public PollDTO read(int num) {

		return dao.read(num);
	}

	public Vector<PollitemDTO> itemList(int num) {

		return idao.itemList(num);
	}

	/**
	 * 투표 처리
	 * 
	 * @param itemnum
	 * @return
	 */
	public boolean updateCount(String[] itemnum) {

		boolean flag = false;

		flag = idao.updateCount(itemnum);

		return flag;

	}

	public int sumCount(int num) {
		if (num == 0)
			num = dao.getMaxNum();
		int count = idao.sumCount(num);
		return count;
	}

	public Vector<PollitemDTO> getView(int num) {

		if (num == 0)
			num = dao.getMaxNum();
		Vector<PollitemDTO> vlist = idao.getView(num);

		return vlist;
	}

}
