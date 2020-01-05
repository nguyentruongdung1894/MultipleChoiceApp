package usolv.com.vn.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usolv.com.vn.DAO.AnswerDAO;
import usolv.com.vn.DAO.CategoryDAO;
import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.DAO.Impl.AnswerDAOImpl;
import usolv.com.vn.DAO.Impl.CategoryDAOImpl;
import usolv.com.vn.DAO.Impl.QuestionDAOImpl;
import usolv.com.vn.DTO.QuestionDTO;
import usolv.com.vn.entitys.AnswerEntity;
import usolv.com.vn.entitys.AnswerListEntity;
import usolv.com.vn.entitys.CategoryEntity;
import usolv.com.vn.entitys.QuestionEntity;

@Controller
public class QuestionManagementController {
	private QuestionDTO questionDTO;
	private QuestionDAO questionDAO;
	private CategoryDAO categoryDAO;
	private AnswerDAO answerDAO;

	public QuestionManagementController() {
		questionDTO = new QuestionDTO();
		questionDAO = new QuestionDAOImpl();
		categoryDAO = new CategoryDAOImpl();
		answerDAO = new AnswerDAOImpl();
	}

	@RequestMapping(value = "get-all-question", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap model) {
		List<QuestionDTO> listQuestionsDTO = questionDTO.GetAllQuestionsDTO();
		model.addAttribute("listQuestionsDTO", listQuestionsDTO);
		return "get-all-questions";
	}

	@RequestMapping("deleteQuestion")
	public String DeleteQuestion(@ModelAttribute("questionId") String questionId) {
		String model = null;
		if (questionDAO.DeleteQuestion(questionId)) {
			model = "redirect:get-all-question";
		} else {
			model = "error";
		}
		return model;
	}

	@RequestMapping(value = "add-question")
	public String SaveQuestion(ModelMap model) {
		QuestionEntity questionEntity = new QuestionEntity();
		List<AnswerEntity> listAnswers = new ArrayList<AnswerEntity>();
		List<CategoryEntity> listCategoriesEntity = categoryDAO.GetAllCategories();
		model.addAttribute("questionEntity", questionEntity);
		model.addAttribute("listAnswers", listAnswers);
		model.addAttribute("listCategoriesEntity", listCategoriesEntity);
		return "add-question";
	}

	@RequestMapping(value = "add-question-succ", method = RequestMethod.POST)
	public String SaveQuestionSucc(HttpServletRequest request,
			@ModelAttribute("listAnswers") AnswerListEntity listAnswers) throws SQLException {
		String model = null;
		String questionId = request.getParameter("macauhoi");
		String categoryId = request.getParameter("categoryId");
		String contentQuestion = request.getParameter("noidungcauhoi");
		boolean type = Boolean.parseBoolean(request.getParameter("type"));
		boolean status = Boolean.parseBoolean(request.getParameter("status"));
		QuestionEntity questionEntity = new QuestionEntity(questionId, "A00001", categoryId, contentQuestion, type,
				status);

		List<AnswerEntity> answerList = new ArrayList<AnswerEntity>();
		for (int index = 0; index < listAnswers.getAnswerEntitys().size(); index++) {
			AnswerEntity answerEntity = new AnswerEntity();
			answerEntity.setAnswerId(listAnswers.getAnswerEntitys().get(index).getAnswerId());
			answerEntity.setQuestionId(questionId);
			answerEntity.setContentAnswer(listAnswers.getAnswerEntitys().get(index).getContentAnswer());
			answerEntity.setCorrectAnswer(listAnswers.getAnswerEntitys().get(index).isCorrectAnswer());
			answerList.add(answerEntity);
		}

		if (questionDAO.AddQuestion(questionEntity) && answerDAO.AddAnswers(answerList)) {
			model = "redirect:get-all-question";
		} else {
			model = "error";
		}
		return model;
	}
}
