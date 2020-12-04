package com.project1.ToDiArY;

import java.util.List;

public interface ContentsService {
	public int save(Contents p);
	public int delete(int stx);
	public int update(Contents p);
	public Contents getContentsById(int sid);
	public List<Contents> getContents1();
}
