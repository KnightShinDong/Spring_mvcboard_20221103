package com.gyojincompany.mvcboard.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.gyojincompany.mvcboard.dao.BoardDao;
import com.gyojincompany.mvcboard.dto.BoardDto;

public class BContentViewCommand implements BCommand {

	@Override
	public void excute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap( ); //model을 map이라는 걸로 매핑
		//model객체를 request객체로 매핑
		
		HttpServletRequest request =  (HttpServletRequest) map.get("request");
		
		String bid =request.getParameter("bid");
		
		
		BoardDao dao =new BoardDao();
		
		BoardDto dto = dao.content_view(bid);
		
		model.addAttribute("content",dto);
		
	}

}
