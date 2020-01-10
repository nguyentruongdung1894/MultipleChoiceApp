package usolv.com.vn.DAO;

import java.util.List;

import usolv.com.vn.entitys.ExamEntity;
import usolv.com.vn.entitys.ExamResult;

public interface ExamDAO {
	public List<ExamEntity> GetAllExamEntity();

	public boolean addExam(ExamEntity examEntity);

	public boolean addExamResult(ExamResult examResult);
	
	public ExamEntity GetExamEntity();
}
