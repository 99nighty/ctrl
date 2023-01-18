package model.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.common.JDBCUtil;

public class QCommentDAO {
	Connection conn;
	PreparedStatement pstmt;
	
	final String INSERT_QCOMMENT="INSERT INTO QCOMMENT (QC_CONTENT,Q_NUM,QC_ID,QC_GROUP,QC_DATE) VALUES(?,?,?,?,NOW())";
	final String DELETE_QCOMMENT="DELETE FROM QCOMMENT WHERE QC_NUM=?";
	final String SELECTONE_QCOMMENT="SELECT * FROM COMMENT WHERE C_NUM=?";
	final String SELECTALL_QCOMMENT="SELECT * FROM COMMENT ORDER BY C_NUM DESC";

	public boolean insertQcomment(QCommentVO qcvo) {
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(INSERT_QCOMMENT);
			pstmt.setString(1, qcvo.getQcContent());
			pstmt.setInt(2, qcvo.getqNum());
			pstmt.setString(3, qcvo.getQcID());
			pstmt.setInt(4, qcvo.getQcGroup());
			
			int res=pstmt.executeUpdate();	
			if(res<=0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(conn, pstmt);
		return true;
	}
	
	public boolean deleteQcomment(QCommentVO qcvo) {
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(DELETE_QCOMMENT);
			pstmt.setInt(1, qcvo.getQcNum());
			int res=pstmt.executeUpdate();
			if(res<=0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(conn, pstmt);
		return true;
	}
	public QCommentVO selectOneQcomment(QCommentVO qcvo) {
		QCommentVO data=null;
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(SELECTONE_QCOMMENT);
			pstmt.setInt(1, qcvo.getQcNum());
			ResultSet rs=pstmt.executeQuery();
				if(rs.next()) {
					data=new QCommentVO();
					data.setQcNum(rs.getInt("QC_NUM"));
					data.setQcContent(rs.getString("QC_CONTENT"));
					data.setQcID(rs.getString("QC_ID"));
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return data;
	}
	public ArrayList<QCommentVO> selectAllQcomment(QCommentVO qcvo) {
		ArrayList<QCommentVO> datas=new ArrayList<QCommentVO>();
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(SELECTALL_QCOMMENT);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				QCommentVO data=new QCommentVO();
				data.setQcNum(rs.getInt("QC_NUM"));
				data.setQcContent(rs.getString("QC_CONTENT"));
				data.setQcID(rs.getString("QC_ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return datas;
	}
}