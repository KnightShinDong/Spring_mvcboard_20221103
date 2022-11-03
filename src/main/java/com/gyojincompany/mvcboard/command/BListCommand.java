package com.gyojincompany.mvcboard.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.gyojincompany.mvcboard.dao.BoardDao;
import com.gyojincompany.mvcboard.dto.BoardDto;

public class BListCommand implements BCommand {

	@Override
	public void excute(Model model) {
		// TODO Auto-generated method stub
		
		BoardDao dao = new BoardDao();
		ArrayList<BoardDto> dtos = dao.list();
		//DB에서 가져온 글 목록을 모두 가지고 있는 Arraylist 자료구조의 dtos를 저장
		int count = dao.board_count();//모든 게시글의 수를 반환
		model.addAttribute("boardCount", count);
		model.addAttribute("list",dtos); //글목록 ArrayList를 모델 객체에 저장
		
	}

}
