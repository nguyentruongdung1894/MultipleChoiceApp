package usolv.com.vn.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.connectDB.SQLConnection;
import usolv.com.vn.entitys.QuestionEntity;

public class QuestionDAOImpl implements QuestionDAO {

	@Override
	public List<QuestionEntity> GetAllQuestions() {
		List<QuestionEntity> listQuestions = new ArrayList<QuestionEntity>();
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM TB_Question WHERE Status = 1";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				QuestionEntity questions = new QuestionEntity();
				questions.setQuestionId(rs.getString("QuestionId"));
				questions.setAdminId(rs.getString("AdminId"));
				questions.setCategoryId(rs.getString("CategoryId"));
				questions.setContentQuestion(rs.getString("ContentQuestion"));
				questions.setType(rs.getBoolean("Type"));
				questions.setStatus(rs.getBoolean("Status"));
				listQuestions.add(questions);
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
		return listQuestions;
	}

	@Override
	public boolean DeleteQuestion(String questionId) {
		Connection conn = SQLConnection.getConnectionSqlServer();
		PreparedStatement pst = null;
		String sql = "UPDATE TB_Question SET Status = '0' WHERE QuestionId = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, questionId);
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		return true;
	}
//	public static void main(String[] args) {
//		QuestionDAOImpl n = new QuestionDAOImpl();
//		boolean cehc = n.DeleteQuestion("Q00001");
//		System.out.println(cehc);
//	}
}
