package com.project1.ToDiArY;

import java.util.List;


public interface MemberInterface {
	public int insertMember (Member vo);
	public int deleteMember (int seq);
	public Member getMember(int seq);
	public Contents getContent(int seq);
	public List<Contents> getContentList();
}
