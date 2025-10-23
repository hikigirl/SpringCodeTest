package com.test.code.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository @RequiredArgsConstructor 
public class CodeDAOImpl implements CodeDAO {
	
	private final SqlSessionTemplate template; //의존 주입
	
	@Override
	public List<LanguageDTO> llist() {
		return template.selectList("code.llist");
	}

	@Override
	public int add(CodeDTO dto) {
		return template.insert("code.add", dto);
	}

	@Override
	public List<CodeDTO> list() {
		return template.selectList("code.list");
	}

	@Override
	public CodeDTO get(String seq) {
		return template.selectOne("code.get", seq);
	}
	
}
