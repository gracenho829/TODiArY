package com.project1.ToDiArY;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public Member getUser1(Member vo) {
		return memberDAO.getUser1(vo);
	}
	
	@Override
	public int insertMember(Member vo) {
		return memberDAO.insertMember(vo);
	}

}
