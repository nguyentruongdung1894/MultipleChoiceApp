package usolv.com.vn.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.ExamDAO;
import usolv.com.vn.connectDB.SQLConnection;
import usolv.com.vn.entitys.ExamEntity;
import usolv.com.vn.entitys.ExamResult;

public class ExamDAOImpl implements ExamDAO {

	@Override
	public List<ExamEntity> GetAllExamEntity() {
		List<ExamEntity> listExamEntity = new ArrayList<ExamEntity>();
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM TB_Exam WHERE STATUS = 1";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				ExamEntity examEntity = new ExamEntity();
				examEntity.setExamId(rs.getInt("ExamId"));
				examEntity.setFullName(rs.getString("FullName"));
				examEntity.setPhone(rs.getString("Phone"));
				examEntity.setEmail(rs.getString("Email"));
				examEntity.setExamDate(rs.getDate("ExamDate"));
				examEntity.setResult(rs.getInt("Result"));
				examEntity.setStatus(rs.getBoolean("Status"));
				listExamEntity.add(examEntity);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listExamEntity;
	}

	@Override
	public boolean addExam(ExamEntity examEntity) {
		boolean check = false;
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "insert into TB_Exam values(?,?,?,?,?,?)";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, examEntity.getFullName());
			pstm.setString(2, examEntity.getPhone());
			pstm.setString(3, examEntity.getEmail());
			pstm.setDate(4, (java.sql.Date) examEntity.getExamDate());
			pstm.setInt(5, examEntity.getResult());
			pstm.setBoolean(6, examEntity.isStatus());
			int count = pstm.executeUpdate();
			if (count != 0) {
				check = true;
			} else {
				check = false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return check;
	}

	@Override
	public boolean addExamResult(ExamResult examResult) {
		boolean check = false;
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "insert into TB_ExamResult values(?,?,?)";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			pstm = conn.prepareStatement(query);
			pstm.setInt(1, examResult.getExamId());
			pstm.setInt(2, examResult.getAnswerId());
			pstm.setInt(3, examResult.getQuestionId());
			int count = pstm.executeUpdate();
			if (count != 0) {
				check = true;
			} else {
				check = false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return check;
	}

	@Override
	public ExamEntity GetExamEntity() {
		ExamEntity examEntity = new ExamEntity();
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "SELECT top(1) * FROM TB_Exam ORDER BY ExamId DESC";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				examEntity.setExamId(rs.getInt("ExamId"));
				examEntity.setFullName(rs.getString("FullName"));
				examEntity.setPhone(rs.getString("Phone"));
				examEntity.setEmail(rs.getString("Email"));
				examEntity.setExamDate(rs.getDate("ExamDate"));
				examEntity.setResult(rs.getInt("Result"));
				examEntity.setStatus(rs.getBoolean("Status"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return examEntity;
	}

//	public static void main(String[] args) {
//		ExamDAOImpl a = new ExamDAOImpl();
//		ExamResult eExamEntity = new ExamResult(1,37,10);
//		boolean check = a.addExamResult(eExamEntity);
//		System.out.println(check);
//	}
}
