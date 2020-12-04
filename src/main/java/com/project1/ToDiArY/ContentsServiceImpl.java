package com.project1.ToDiArY;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContentsServiceImpl implements ContentsService{
	@Autowired
	ContentsDAO contentsDAO;
	
	@Override
	public int save(Contents p) {
		return contentsDAO.save(p);
	}
	
	@Override
	public int delete(int stx) {
		return contentsDAO.delete(stx);
	}
	
	@Override
	public int update(Contents vo) {
		return contentsDAO.update(vo);
	}
	
	@Override
	public Contents getContentsById(int sid) {
		return contentsDAO.getContentsById(sid);
	}
	
	@Override
	public List<Contents> getContents1(){
		return contentsDAO.getContents1();
	}
}
