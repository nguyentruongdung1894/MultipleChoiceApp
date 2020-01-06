package usolv.com.vn.entitys;

public class AnswerEntity {
	private String answerId;
	private String questionId;
	private String contentAnswer;
	private boolean correctAnswer;

	public AnswerEntity() {
		super();
	}

	public AnswerEntity(String answerId, String questionId, String contentAnswer, boolean correctAnswer) {
		super();
		this.answerId = answerId;
		this.questionId = questionId;
		this.contentAnswer = contentAnswer;
		this.correctAnswer = correctAnswer;
	}

	public String getAnswerId() {
		return answerId;
	}

	public void setAnswerId(String answerId) {
		this.answerId = answerId;
	}

	public String getQuestionId() {
		return questionId;
	}

	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}

	public String getContentAnswer() {
		return contentAnswer;
	}

	public void setContentAnswer(String contentAnswer) {
		this.contentAnswer = contentAnswer;
	}

	public boolean isCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(boolean correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
}
