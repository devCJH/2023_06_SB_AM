package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ReactionPointDao;
import com.example.demo.vo.ReactionPoint;

@Service
public class ReactionPointService {
	
	private ReactionPointDao reactionPointDao;
	
	@Autowired
	ReactionPointService(ReactionPointDao reactionPointDao){
		this.reactionPointDao = reactionPointDao;
	}

	public ReactionPoint getReactionPoint(int loginedMemberId, String relTypeCode, int relId) {
		return reactionPointDao.getReactionPoint(loginedMemberId, relTypeCode, relId);
	}

	public void doInsertReactionPoint(int loginedMemberId, String relTypeCode, int relId, int point) {
		reactionPointDao.doInsertReactionPoint(loginedMemberId, relTypeCode, relId, point);
	}
	
}
