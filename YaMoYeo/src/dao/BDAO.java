package dao;

import static db.JdbcUtil.close;

import java.sql.*;
import java.util.ArrayList;

import dto.BoardDTO;

public class BDAO {

	private static BDAO dao;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public static BDAO getInstance() {
		if(dao==null) {
			dao = new BDAO();
		}
		
		return dao;
	}
	
	public void setConnection(Connection con) {
		this.con = con;
	}

	public int boardWrite(BoardDTO board) {
		int result = 0;		
		String sql ="INSERT INTO ZBOARD VALUES(ZNUM_SEQ.NEXTVAL,?,?,?,?,SYSDATE,0,?)";		
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, board.getzId());
			pstmt.setString(2, board.getzTitle());
			pstmt.setString(3, board.getzCategories());
			pstmt.setString(4, board.getzContents());
			pstmt.setString(5, board.getzFile());
			result = pstmt.executeUpdate();	
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int ListCount() {
		int listCount = 0;
		String sql ="SELECT COUNT(*) FROM ZBOARD";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return listCount;
	}
	public ArrayList<BoardDTO> BList(int startRow, int endRow) {
		ArrayList<BoardDTO> bList = new ArrayList<BoardDTO>();
		BoardDTO board = null;
		
		String sql = "SELECT * FROM ZBLIST WHERE RN BETWEEN ? AND ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				board = new BoardDTO();	
				
				board.setzNum(rs.getInt(1));
				board.setzId(rs.getString(2));
				board.setzTitle(rs.getString(3));
				board.setzCategories(rs.getString(4));
				board.setzContents(rs.getString(5));
				board.setzDate(rs.getDate(6));
				board.setzHits(rs.getInt(7));
				board.setzFile(rs.getString(8));
				
				bList.add(board);				
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}	
		
		return bList;
	}

	public int boardHits(int zNum) {
		int result = 0;		
		String sql = "UPDATE ZBOARD SET ZHITS=ZHITS+1 WHERE ZNUM=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, zNum);
			result = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public BoardDTO boardView(int zNum) {
		BoardDTO board = null;		
		String sql ="SELECT * FROM ZBOARD WHERE ZNUM=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, zNum);			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board = new BoardDTO();
				board.setzNum(rs.getInt(1));
				board.setzId(rs.getString(2));
				board.setzTitle(rs.getString(3));
				board.setzCategories(rs.getString(4));
				board.setzContents(rs.getString(5));
				board.setzDate(rs.getDate(6));
				board.setzHits(rs.getInt(7));
				board.setzFile(rs.getString(8));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return board;
	}

	public int boardModify(BoardDTO board) {
		int result = 0;
		
		String sql="UPDATE ZBOARD SET ZTITLE=?, ZCATEGORIES=?, ZCONTENTS=?, ZFILE=? WHERE ZNUM=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getzTitle());
			pstmt.setString(2, board.getzCategories());
			pstmt.setString(3, board.getzContents());
			pstmt.setString(4, board.getzFile());
			pstmt.setInt(5, board.getzNum());
			result = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
		}	
		return result;
	}

	public int boardDelete(int zNum) {
		int result = 0;
		
		String sql = "DELETE FROM ZBOARD WHERE ZNUM=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, zNum);
			result = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
}
