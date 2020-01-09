package usolv.com.vn.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.DAO.Impl.QuestionDAOImpl;
import usolv.com.vn.DTO.QuestionDTO;
import usolv.com.vn.entitys.ListAQ;
import usolv.com.vn.entitys.QuestionEntity;

@Controller
public class QuestionsController {
	private QuestionDTO questionDTO;
	private QuestionDAO questionDAO;

	public QuestionsController() {
		questionDTO = new QuestionDTO();
		questionDAO = new QuestionDAOImpl();
	}

	@RequestMapping(value = "get-random-questions", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap modelmap) {
		// List<QuestionEntity> listQuestionsDTO = questionDAO.GetAllQuestions();
		ListAQ listAQ = new ListAQ();
		listAQ.setListQuestionEntity(questionDAO.GetAllQuestions());
		modelmap.addAttribute("listQuestionsDTO", listAQ);
		return "get-all-category";
	}

	@RequestMapping(value = "welcome", method = RequestMethod.POST)
	public ModelAndView SubmitSucc(@ModelAttribute("listQuestionsDTO") ListAQ listQuestionsDTO,
			HttpServletRequest request) {

//		for (int i = 0; i < 5; i++) {
//			System.out.println("Cau: " + listQuestionsDTO.getQuestionId());
//			for (int index = 0; index < listQuestionsDTO.getListAnswerEntity().size(); index++) {
//				System.out.println("Dap an: " + listQuestionsDTO.getListAnswerEntity().get(index).getAnswerId());
//			}
//			System.out.println("-----------------------------------");
//		}

		for (int i = 0; i < listQuestionsDTO.getListQuestionEntity().size(); i++) {
			System.out.println("Cau: " + listQuestionsDTO.getListQuestionEntity().get(i).getQuestionId());
			System.out.println(listQuestionsDTO.getListQuestionEntity().get(i).getListAnswerEntity().size());
			for (int index = 0; index < listQuestionsDTO.getListQuestionEntity().get(i).getListAnswerEntity()
					.size(); index++) {
				System.out.println(listQuestionsDTO.getListQuestionEntity().get(i).getListAnswerEntity().get(index)
						.getContentAnswer());
			}
		}

//		for (AnswerEntity answerEntity : answerList) {
//			System.out.println(answerEntity.getAnswerId());
//		}
		return new ModelAndView("welcome", "contactForm", listQuestionsDTO);
	}
}
