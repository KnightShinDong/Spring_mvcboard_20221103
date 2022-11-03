package com.gyojincompany.mvcboard.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gyojincompany.mvcboard.dao.BoardDao;

public class BWriteCommand implements BCommand {

	@Override
	public void excute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap( ); //model을 map이라는 걸로 매핑
		//model객체를 request객체로 매핑
		
		HttpServletRequest request =  (HttpServletRequest) map.get("request");
		
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		BoardDao dao = new BoardDao();
		dao.write(bname, btitle, bcontent);
		
		
		//변수들을 받아서 dao에 넣어주는 역활
		
	}

}
