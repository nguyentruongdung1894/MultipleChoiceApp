package usolv.com.vn.entitys;

import java.util.List;

public class ListAQ {
	private List<QuestionEntity> listQuestionEntity;

	public ListAQ() {
		super();
	}

	public ListAQ(List<QuestionEntity> listQuestionEntity) {
		super();
		this.listQuestionEntity = listQuestionEntity;
	}

	public List<QuestionEntity> getListQuestionEntity() {
		return listQuestionEntity;
	}

	public void setListQuestionEntity(List<QuestionEntity> listQuestionEntity) {
		this.listQuestionEntity = listQuestionEntity;
	}

}
