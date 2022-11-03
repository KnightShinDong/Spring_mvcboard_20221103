package com.gyojincompany.mvcboard.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.gyojincompany.mvcboard.dao.BoardDao;

public class BReplyCommand implements BCommand {

	@Override
	public void excute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap( ); //model을 map이라는 걸로 매핑
		//model객체를 request객체로 매핑
		
		HttpServletRequest request =  (HttpServletRequest) map.get("request");
		
		String bid = request.getParameter("bid");
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bgroup = request.getParameter("bgroup");
		String bstep = request.getParameter("bstep");
		String bindent = request.getParameter("bindent");
		
		BoardDao dao = new BoardDao();
		dao.reply(bid, bname, btitle, bcontent, bgroup, bstep, bindent ); //순서 중요(DAO의 변수선언 순서대로)
	}

}
