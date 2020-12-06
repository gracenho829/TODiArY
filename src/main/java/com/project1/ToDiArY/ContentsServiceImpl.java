package com.project1.ToDiArY;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContentsServiceImpl implements ContentsService{
	@Autowired
	ContentsDAO contentsDAO;
	
	@Override
	public int insertContents(Contents vo) {
		return contentsDAO.insertContents(vo);
	}
	
	@Override
	public int deleteContents(int seq) {
		return contentsDAO.deleteContents(seq);
	}
	
	@Override
	public int updateContents(Contents vo) {
		return contentsDAO.updateContents(vo);
	}
	
	@Override
	public Contents getContents(int seq) {
		return contentsDAO.getContents(seq);
	}
	
	@Override
	public List<Contents> getContentsList(){
		return contentsDAO.getContentsList();
	}
}
