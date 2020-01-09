package usolv.com.vn.entitys;

import java.util.List;

public class ExamResultEntity {
	private int examResultId;
	private int examId;
	private List<CorrectChooseEntity> listCorrectChooseEntity;
	private int questionId;
	private List<AnswerChooseEntity> listAnswerChooseEntity;

	public ExamResultEntity() {
		super();
	}

	public ExamResultEntity(int examResultId, int examId, List<CorrectChooseEntity> listCorrectChooseEntity,
			int questionId, List<AnswerChooseEntity> listAnswerChooseEntity) {
		super();
		this.examResultId = examResultId;
		this.examId = examId;
		this.listCorrectChooseEntity = listCorrectChooseEntity;
		this.questionId = questionId;
		this.listAnswerChooseEntity = listAnswerChooseEntity;
	}

	public int getExamResultId() {
		return examResultId;
	}

	public void setExamResultId(int examResultId) {
		this.examResultId = examResultId;
	}

	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}

	public List<CorrectChooseEntity> getListCorrectChooseEntity() {
		return listCorrectChooseEntity;
	}

	public void setListCorrectChooseEntity(List<CorrectChooseEntity> listCorrectChooseEntity) {
		this.listCorrectChooseEntity = listCorrectChooseEntity;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public List<AnswerChooseEntity> getListAnswerChooseEntity() {
		return listAnswerChooseEntity;
	}

	public void setListAnswerChooseEntity(List<AnswerChooseEntity> listAnswerChooseEntity) {
		this.listAnswerChooseEntity = listAnswerChooseEntity;
	}

}
