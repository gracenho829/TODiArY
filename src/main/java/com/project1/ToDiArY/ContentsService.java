package com.project1.ToDiArY;

import java.util.List;

public interface ContentsService {
	public int insertContents(Contents vo);
	public int deleteContents(int stx);
	public int updateContents(Contents vo);
	public Contents getContents(int stx);
	public List<Contents> getContentsList();
}
