package usolv.com.vn.DAO.Impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.AnswerDAO;
import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.connectDB.SQLConnection;
import usolv.com.vn.entitys.AnswerEntity;
import usolv.com.vn.entitys.QuestionEntity;

public class QuestionDAOImpl implements QuestionDAO {
	private AnswerDAO answerDAO;

	public QuestionDAOImpl() {
		answerDAO = new AnswerDAOImpl();
	}

	@Override
	public List<QuestionEntity> GetAllQuestions() {
		List<QuestionEntity> listQuestions = new ArrayList<QuestionEntity>();
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "SELECT TOP 5 * FROM TB_Question WHERE Status = 1 ORDER BY NEWID() ";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				QuestionEntity questions = new QuestionEntity();
				List<AnswerEntity> listAnswerEntity = answerDAO.GetAnswersByAnswersId(rs.getString("QuestionId"));
				questions.setQuestionId(rs.getString("QuestionId"));
				questions.setAdminId(rs.getString("AdminId"));
				questions.setCategoryId(rs.getString("CategoryId"));
				questions.setContentQuestion(rs.getString("ContentQuestion"));
				questions.setType(rs.getBoolean("Type"));
				questions.setStatus(rs.getBoolean("Status"));
				questions.setListAnswerEntity(listAnswerEntity);
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

	public static void main(String[] args) {
		QuestionDAOImpl questionDAOImpl = new QuestionDAOImpl();
		List<QuestionEntity> listQuestions = questionDAOImpl.GetAllQuestions();
		for (int index = 0; index < listQuestions.size(); index++) {
			System.out.println("Cau " + index + ":" + listQuestions.get(index).getContentQuestion());
			for (int i = 0; i < 4; i++) {
				System.out.println(
						"Dap an " + i + ":" + listQuestions.get(index).getListAnswerEntity().get(i).getAnswerId());
			}

		}

	}
}
