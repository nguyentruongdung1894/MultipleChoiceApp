package usolv.com.vn.DAO;

import java.util.List;

import usolv.com.vn.entitys.QuestionEntity;

public interface QuestionDAO {
	public List<QuestionEntity> GetAllQuestions();

	public boolean DeleteQuestion(String questionId);
}
