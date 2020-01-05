package usolv.com.vn.DAO.Impl;

import java.sql.BatchUpdateException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import usolv.com.vn.DAO.AnswerDAO;
import usolv.com.vn.connectDB.SQLConnection;
import usolv.com.vn.entitys.AnswerEntity;

public class AnswerDAOImpl implements AnswerDAO {

	@Override
	public boolean AddAnswers(List<AnswerEntity> answerList) throws SQLException  {
		Boolean check = false;
		Connection conn = null;
		PreparedStatement pstm = null;
		//contactList = new ArrayList<Contact>();
		try {
			conn = SQLConnection.getConnectionSqlServer();
			// conn.setAutoCommit(false);
			pstm = conn.prepareStatement("insert into TB_Answer values(?,?,?,?)");
			Iterator<AnswerEntity> it = answerList.iterator();
			while (it.hasNext()) {
				AnswerEntity answer = it.next();
				pstm.setString(1, answer.getAnswerId());
				pstm.setString(2, answer.getQuestionId());
				pstm.setString(3, answer.getContentAnswer());
				pstm.setBoolean(4, answer.isCorrectAnswer());
				pstm.addBatch();

			}
			int[] numUpdates = pstm.executeBatch();
			for (int i = 0; i < numUpdates.length; i++) {
				if (numUpdates[i] == -2)
					check = false;
				else
					check = true;
			}
			// conn.commit();
		} catch (BatchUpdateException b) {
			// process BatchUpdateException
		}
		return check;
	}
}
