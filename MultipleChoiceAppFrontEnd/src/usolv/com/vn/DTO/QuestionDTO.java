package usolv.com.vn.DTO;

import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.DAO.Impl.QuestionDAOImpl;
import usolv.com.vn.entitys.AnswerEntity;
import usolv.com.vn.entitys.QuestionEntity;

public class QuestionDTO {
	private int id;
	private int questionId;
	private String contentQuestion;
	private List<AnswerEntity> listAnswerEntity;

	public QuestionDTO(int id, int questionId, String contentQuestion, List<AnswerEntity> listAnswerEntity) {
		super();
		this.id = id;
		this.questionId = questionId;
		this.contentQuestion = contentQuestion;
		this.listAnswerEntity = listAnswerEntity;
	}

	public QuestionDTO() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getContentQuestion() {
		return contentQuestion;
	}

	public void setContentQuestion(String contentQuestion) {
		this.contentQuestion = contentQuestion;
	}

	public List<AnswerEntity> getListAnswerEntity() {
		return listAnswerEntity;
	}

	public void setListAnswerEntity(List<AnswerEntity> listAnswerEntity) {
		this.listAnswerEntity = listAnswerEntity;
	}

	public List<QuestionDTO> GetAllQuestionsDTO() {
		int index = 1;
		QuestionDAO questionDAO = new QuestionDAOImpl();
		List<QuestionDTO> listQuestionDTO = new ArrayList<QuestionDTO>();
		List<QuestionEntity> listQuestionEntity = questionDAO.GetAllQuestions();
		for (QuestionEntity questionEntity : listQuestionEntity) {
			QuestionDTO questionDTO = new QuestionDTO();
			questionDTO.setId(index);
			questionDTO.setQuestionId(questionEntity.getQuestionId());
			questionDTO.setContentQuestion(questionEntity.getContentQuestion());
			questionDTO.setListAnswerEntity(questionEntity.getListAnswerEntity());
			index++;
			listQuestionDTO.add(questionDTO);
		}
		return listQuestionDTO;
	}

//	public static void main(String[] args) {
//		QuestionDTO questionDTO = new QuestionDTO();
//		List<QuestionDTO> listQuestionDTO = questionDTO.GetAllQuestionsDTO();
//		for (int index = 0; index < listQuestionDTO.size(); index++) {
//			System.out.println("Cau " + index + ":" + listQuestionDTO.get(index).getContentQuestion());
//			for (int i = 0; i < 4; i++) {
//				System.out.println("Dap an " + i + ":"
//						+ listQuestionDTO.get(index).getListAnswerEntity().get(i).getContentAnswer());
//			}
//
//		}
//
//	}
}
