package com.test.code.model;

import java.util.List;

public interface CodeDAO {
	//필요한 업무들을 생각해서 미리 만들어둔다
	
	/**
	 * 카테고리 + select
	 * @return
	 */
	List<LanguageDTO> llist();
	
	/**
	 * 코드 게시판 + 글쓰기(insert)
	 * @param dto
	 * @return
	 */
	int add(CodeDTO dto);
	
	/**
	 * 코드 게시판 + 목록 보기
	 * @return
	 */
	List<CodeDTO> list();
	
	/**
	 * 코드 게시판 + 상세보기
	 * @param seq
	 * @return
	 */
	CodeDTO get(String seq);
	
}
