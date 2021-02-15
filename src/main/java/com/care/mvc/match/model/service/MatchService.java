package com.care.mvc.match.model.service;

import static com.care.mvc.common.template.SqlSessionTemplate.*;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.care.mvc.care.model.vo.Care;
import com.care.mvc.match.model.dao.MatchDao;

public class MatchService {
	
	public List<Care> searchProfiles(Map<String, String[]> options) {
		List<Care> profiles = null;		
		SqlSession session = getSession();
		
		profiles = new MatchDao().searchProfiles(session, options);

		session.close();

		return profiles;
	}
	
}
