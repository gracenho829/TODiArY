package com.project1.ToDiArY;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberInterface{
	@Autowired 
	 MemberDAO member;
	
	@Override
	public int insertMember(Member vo) {
		// TODO Auto-generated method stub
		return member.save(vo);
	}

	@Override
	public int deleteMember(int seq) {
		// TODO Auto-generated method stub
		return member.delete(seq);
	}

	@Override
	public Member getMember(int seq) {
		// TODO Auto-generated method stub
		return member.getMemberById(seq);
	}

	@Override
	public List<Contents> getContentList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Contents getContent(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

}
