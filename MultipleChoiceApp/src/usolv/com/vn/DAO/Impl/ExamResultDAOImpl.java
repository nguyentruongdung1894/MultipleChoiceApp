package usolv.com.vn.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.ExamResultDAO;
import usolv.com.vn.connectDB.SQLConnection;
import usolv.com.vn.entitys.AnswerChooseEntity;
import usolv.com.vn.entitys.CorrectChooseEntity;
import usolv.com.vn.entitys.ExamResultEntity;

public class ExamResultDAOImpl implements ExamResultDAO {

	@Override
	public List<AnswerChooseEntity> GetAnswerChooseEntity(int questionId) {
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "select AnswerId from TB_Question q inner join TB_Answer a on q.QuestionId = a.QuestionId where q.QuestionId = ? AND a.CorrectAnswer = 1";
		List<AnswerChooseEntity> listAnswerChooseEntity = new ArrayList<AnswerChooseEntity>();
		try {
			conn = SQLConnection.getConnectionSqlServer();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, questionId);
			rs = pstm.executeQuery();
			while (rs.next()) {
				AnswerChooseEntity answerChooseEntity = new AnswerChooseEntity();
				answerChooseEntity.setAnswerChooseEntity(rs.getInt("AnswerId"));
				listAnswerChooseEntity.add(answerChooseEntity);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listAnswerChooseEntity;
	}

	@Override
	public List<ExamResultEntity> GetExamResultEntityId(int examId) {
		ExamResultDAOImpl examResultDAOImpl = new ExamResultDAOImpl();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT DISTINCT QuestionId FROM TB_ExamResult where ExamId = ?";
		List<ExamResultEntity> listExamResultEntity = new ArrayList<ExamResultEntity>();
		try {
			conn = SQLConnection.getConnectionSqlServer();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, examId);
			rs = pstm.executeQuery();
			while (rs.next()) {
				ExamResultEntity examResultEntity = new ExamResultEntity();
				examResultEntity.setQuestionId(rs.getInt("QuestionId"));
				examResultEntity
						.setListAnswerChooseEntity(examResultDAOImpl.GetAnswerChooseEntity(rs.getInt("QuestionId")));
				examResultEntity
						.setListCorrectChooseEntity(examResultDAOImpl.GetCorrectChooseEntity(rs.getInt("QuestionId")));
				listExamResultEntity.add(examResultEntity);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listExamResultEntity;
	}

	@Override
	public List<CorrectChooseEntity> GetCorrectChooseEntity(int questionId) {
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT AnswerId FROM TB_ExamResult where QuestionId = ?";
		List<CorrectChooseEntity> listCorrectChooseEntity = new ArrayList<CorrectChooseEntity>();
		try {
			conn = SQLConnection.getConnectionSqlServer();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, questionId);
			rs = pstm.executeQuery();
			while (rs.next()) {
				CorrectChooseEntity correctChooseEntity = new CorrectChooseEntity();
				correctChooseEntity.setCorrectChooseEntity(rs.getInt("AnswerId"));
				listCorrectChooseEntity.add(correctChooseEntity);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listCorrectChooseEntity;
	}

	public static void main(String[] args) {
		ExamResultDAOImpl examResultDAOImpl = new ExamResultDAOImpl();
		List<ExamResultEntity> listExamResultEntity = examResultDAOImpl.GetExamResultEntityId(3);
		for (int index = 0; index < listExamResultEntity.size(); index++) {
			for (int i = 0; i < listExamResultEntity.get(index).getListAnswerChooseEntity().size(); i++) {
				System.out.println("Dap an chon: "
						+ listExamResultEntity.get(index).getListAnswerChooseEntity().get(i).getAnswerChooseEntity());
			}
			System.out.println("----------");
			for (int y = 0; y < listExamResultEntity.get(index).getListCorrectChooseEntity().size(); y++) {
				System.out.println("Dap an dung: "
						+ listExamResultEntity.get(index).getListCorrectChooseEntity().get(y).getCorrectChooseEntity());
			}
			System.out.println("---------------------------------------------------------------------------------");
		}
	}
}
