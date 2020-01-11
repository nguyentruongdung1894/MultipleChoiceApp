package usolv.com.vn.DAO;

import java.util.List;

import usolv.com.vn.entitys.AnswerChooseEntity;
import usolv.com.vn.entitys.CorrectChooseEntity;
import usolv.com.vn.entitys.ExamResultEntity;

public interface ExamResultDAO {
	public List<AnswerChooseEntity> GetAnswerChooseEntity(int questionId);
	
	public List<CorrectChooseEntity> GetCorrectChooseEntity(int questionId, int examId);

	public List<ExamResultEntity> GetExamResultEntityId(int examId);
}
