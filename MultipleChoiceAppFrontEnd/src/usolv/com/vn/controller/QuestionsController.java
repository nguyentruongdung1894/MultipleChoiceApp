package usolv.com.vn.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import usolv.com.vn.DAO.CategoryDAO;
import usolv.com.vn.DAO.ExamDAO;
import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.DAO.Impl.CategoryDAOImpl;
import usolv.com.vn.DAO.Impl.ExamDAOImpl;
import usolv.com.vn.DAO.Impl.QuestionDAOImpl;
import usolv.com.vn.entitys.CategoryEntity;
import usolv.com.vn.entitys.ExamEntity;
import usolv.com.vn.entitys.ExamResult;
import usolv.com.vn.entitys.ListAQ;

@Controller
public class QuestionsController {
	private QuestionDAO questionDAO;
	private ExamDAO examDAO;
	private CategoryDAO categoryDAO;

	public QuestionsController() {
		questionDAO = new QuestionDAOImpl();
		examDAO = new ExamDAOImpl();
		categoryDAO = new CategoryDAOImpl();
	}

	@RequestMapping(value = "login")
	public String login(ModelMap modelmap) {
		ExamEntity examEntity = new ExamEntity();
		List<CategoryEntity> listCategoryEntity = categoryDAO.GetAllCategories();
		modelmap.addAttribute("examEntity", examEntity);
		modelmap.addAttribute("listCategoryEntity", listCategoryEntity);
		return "login";
	}

	@RequestMapping(value = "get-random-questions", method = RequestMethod.POST)
	public String GetAllQuestion(ModelMap modelmap, @ModelAttribute("examEntity") ExamEntity examEntity,
			HttpServletRequest request) {
		ListAQ listAQ = new ListAQ();
		listAQ.setListQuestionEntity(questionDAO.GetAllQuestions());
		modelmap.addAttribute("listQuestionsDTO", listAQ);
		/*
		 * System.out.println(examEntity.getFullName()); String categoryId =
		 * request.getParameter("categoryId"); System.out.println(categoryId);
		 */
		request.setAttribute("examEntity", examEntity);
		return "get-all-category";
	}

	@RequestMapping(value = "welcome", method = RequestMethod.POST)
	public ModelAndView SubmitSucc(@ModelAttribute("listQuestionsDTO") ListAQ listQuestionsDTO,
			HttpServletRequest request) {
		long d = System.currentTimeMillis();
		Date date = new Date(d);
		String fullName = request.getParameter("fullName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		ExamEntity examEntity = new ExamEntity(fullName, phone, email, date, 17, true);
		boolean check = examDAO.addExam(examEntity);
		System.out.println(check);
		ExamEntity listExam = examDAO.GetExamEntity();
		int examId = listExam.getExamId();
		System.out.println(examId);
		int answerId = 0;
		int questionId = 0;
		for (int i = 0; i < listQuestionsDTO.getListQuestionEntity().size(); i++) {
			questionId = listQuestionsDTO.getListQuestionEntity().get(i).getQuestionId();
			for (int index = 0; index < listQuestionsDTO.getListQuestionEntity().get(i).getListAnswerEntity()
					.size(); index++) {
				if (listQuestionsDTO.getListQuestionEntity().get(i).getListAnswerEntity().get(index)
						.getAnswerId() == 0) {
					continue;
				} else {
					answerId = listQuestionsDTO.getListQuestionEntity().get(i).getListAnswerEntity().get(index)
							.getAnswerId();
					ExamResult examResult = new ExamResult(examId, answerId, questionId);
					boolean check1 = examDAO.addExamResult(examResult);
					System.out.println(check1);
				}
			}
			System.out.println("====================");
		}
		return new ModelAndView("welcome", "contactForm", listQuestionsDTO);
	}
}
