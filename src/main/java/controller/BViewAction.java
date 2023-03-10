package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.BCCommentVO;
import model.board.BCommentVO;
import model.board.BoardDAO;
import model.board.BoardSet;
import model.board.BoardVO;

public class BViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("/bView.jsp");
		forward.setRedirect(false);
		
		BoardDAO bdao = new BoardDAO();
		BoardVO bvo = new BoardVO();
		ArrayList<BoardSet> bbvo = new ArrayList<BoardSet>();
		ArrayList<BCommentVO> bcList = new ArrayList<BCommentVO>();
		ArrayList<BCCommentVO> bccListSample = new ArrayList<BCCommentVO>();
		ArrayList<ArrayList<BCCommentVO>> bccList = new ArrayList<ArrayList<BCCommentVO>>();
		
		bvo.setbNum(Integer.parseInt(request.getParameter("bNum")));
		
		bbvo=bdao.selectOneBoard(bvo);
		bdao.updatebCnt(bvo);
		
		request.getSession().setAttribute("bbvo", bbvo);
		
		if(!bbvo.isEmpty()) {
			bcList=bbvo.get(0).getBcList();
			request.getSession().setAttribute("bcList", bcList);
			
			if(!bcList.isEmpty()) {
				for(int i=0; i<bcList.size(); i++) {
					bccListSample=bcList.get(i).getBccList();
					bccList.add(bccListSample);
				}
				request.getSession().setAttribute("bccList", bccList);
			}
		}
		return forward;
	}
}
