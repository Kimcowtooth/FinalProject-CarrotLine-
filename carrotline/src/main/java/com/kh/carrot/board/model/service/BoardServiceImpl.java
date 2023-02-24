package com.kh.carrot.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carrot.board.model.dao.BoardDao;
import com.kh.carrot.board.model.vo.Attachment;
import com.kh.carrot.board.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertFile(Attachment at) {
		// TODO Auto-generated method stub
		return boardDao.insertFile(sqlSession, at);
	}

	@Override
	public int insertBoard(Board b) {
		return boardDao.insertBoard(sqlSession, b);
	}

	@Override
	public int increaseCount(int boardNo) {
		return boardDao.increaseCount(sqlSession, boardNo);
	}

	@Override
	public Board selectBoard(int boardNo) {
		return boardDao.selectBoard(sqlSession, boardNo);
	}

	@Override
	public ArrayList<Board> selectList() {
		return boardDao.selectList(sqlSession);
	}
		



}
