package com.project1.ToDiArY;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl{
	@Autowired
	MemberDAO memberDAO;
	public Member getUser1(Member vo) {
		return memberDAO.getUser1(vo);
	}

}
