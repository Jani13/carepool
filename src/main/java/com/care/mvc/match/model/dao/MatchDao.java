package com.care.mvc.match.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.care.mvc.care.model.vo.Care;

public class MatchDao {

	public List<Care> searchProfiles(SqlSession session, Map<String, String[]> options) {
		
		return session.selectList("matchMapper.selectCareList", options);
	}
	
}
