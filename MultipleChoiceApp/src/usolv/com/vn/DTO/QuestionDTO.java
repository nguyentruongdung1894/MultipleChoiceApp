package usolv.com.vn.DTO;

import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.CategoryDAO;
import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.DAO.Impl.CategoryDAOImpl;
import usolv.com.vn.DAO.Impl.QuestionDAOImpl;
import usolv.com.vn.entitys.QuestionEntity;

public class QuestionDTO {
	private int id;
	private int length;
	private int questionId;
	private String contentQuestion;
	private String categoryName;
	private String type;

	public QuestionDTO() {
		super();
	}

	public QuestionDTO(int id, int questionId, String contentQuestion, String categoryName, String type) {
		super();
		this.id = id;
		this.questionId = questionId;
		this.contentQuestion = contentQuestion;
		this.categoryName = categoryName;
		this.type = type;
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

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public String getCategoryName(String categoryId) {
		String categoryName = null;
		CategoryDAO categoryDAO = new CategoryDAOImpl();
		categoryName = categoryDAO.GetCategoryById(categoryId);
		return categoryName;
	}

	public List<QuestionDTO> GetAllQuestionsDTO() {
		int index = 1;
		QuestionDAO questionDAO = new QuestionDAOImpl();
		List<QuestionDTO> listQuestionDTO = new ArrayList<QuestionDTO>();
		List<QuestionEntity> listQuestionEntity = questionDAO.GetAllQuestions();
		for (QuestionEntity questionEntity : listQuestionEntity) {
			QuestionDTO questionDTO = new QuestionDTO();
			questionDTO.setId(index);

			int length = String.valueOf(questionEntity.getQuestionId()).length();
			questionDTO.setQuestionId(questionEntity.getQuestionId());
			questionDTO.setLength(length);
			questionDTO.setContentQuestion(questionEntity.getContentQuestion());
			questionDTO.setCategoryName(new QuestionDTO().getCategoryName(questionEntity.getCategoryId()));
			if (questionEntity.isType()) {
				questionDTO.setType("Multi");
			} else {
				questionDTO.setType("Single");
			}
			index++;
			listQuestionDTO.add(questionDTO);
		}
		return listQuestionDTO;
	}
}
