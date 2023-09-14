package com.poll;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.utility.DBClose;
import com.utility.DBOpen;

public class PollitemDAO {

	public boolean delete(int num) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" delete from pollitem  ");
		sql.append(" where num = ?  ");

		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			
			int cnt = pstmt.executeUpdate();
			if(cnt>0)flag =true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(pstmt, con);
		}
		
		return flag;
	}
	
	public int sumCount(int num) {
		int count = 0;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select sum(count) from pollitem where num=?");
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next())
				count = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBClose.close(pstmt, con);
		}
		return count;
	}

	public Vector<PollitemDTO> getView(int num) {
		Vector<PollitemDTO> vlist = new Vector<PollitemDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select item, count from pollitem where num=? ");

		try {

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PollitemDTO idto = new PollitemDTO();
				String item[] = new String[1];
				item[0] = rs.getString(1);
				idto.setItem(item[0]);
				idto.setCount(rs.getInt(2));
				vlist.add(idto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBClose.close(rs, pstmt, con);
		}
		return vlist;
	}

	public boolean updateCount(String[] itemnum) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" update pollitem set count = count+1 where itemnum = ?");
		try {
			pstmt = con.prepareStatement(sql.toString());
			for (int i = 0; i < itemnum.length; i++) {
				if (itemnum[i] == null || itemnum[i].equals(""))
					break;
				pstmt.setInt(1, Integer.parseInt(itemnum[i]));
				pstmt.executeUpdate();
			}
			flag = true;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBClose.close(pstmt, con);
		}
		return flag;
	}

	public Vector<PollitemDTO> itemList(int num) {
		Vector<PollitemDTO> vlist = new Vector<PollitemDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select * from pollitem where num = ?");

		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PollitemDTO dto = new PollitemDTO();
				dto.setItemnum(rs.getInt("itemnum"));
				dto.setItem(rs.getString("item"));
				dto.setCount(rs.getInt("count"));
				dto.setNum(rs.getInt("num"));

				vlist.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBClose.close(rs, pstmt, con);
		}
		return vlist;
	}

	public boolean create(PollitemDTO dto) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" insert pollitem(item,num) values(?,?) ");
		try {

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getItem());
			pstmt.setInt(2, dto.getNum());
			int j = pstmt.executeUpdate();

			if (j > 0)
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBClose.close(pstmt, con);
		}
		return flag;
	}
}