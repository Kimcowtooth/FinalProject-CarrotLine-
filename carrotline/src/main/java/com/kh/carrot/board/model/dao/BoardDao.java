package com.kh.carrot.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carrot.board.model.vo.Attachment;
import com.kh.carrot.board.model.vo.Board;

@Repository
public class BoardDao {

	public int insertFile(SqlSessionTemplate sqlSession, Attachment at) {
		return sqlSession.insert("fileMapper.insertFile",at);
	}

	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard",b);
	}

	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession) {
		System.out.println("dao들어옴");
		return (ArrayList)sqlSession.selectList("boardMapper.selectList");
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount", boardNo);
	}

	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.detailBoard", boardNo);
	}

}
