package com.project1.ToDiArY;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project1.ToDiArY.Contents;
import com.project1.ToDiArY.ContentsDAO.ContentsRowMapper;
import com.project1.ToDiArY.*;

@Repository
public class ContentsDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int insertContents(Contents vo) {
		int result = sqlSession.insert("Contents.insertContents", vo);
		return result;
	}

	public int updateContents(Contents vo) {
		int result = sqlSession.update("Contents.updateContents", vo);
		return result;
	}
	
	public int deleteContents(int stx) {
		int result = sqlSession.delete("Contents.deleteContents", stx);
		return result;
	}
	
	class ContentsRowMapper implements RowMapper<Contents>{
		@Override
		public Contents mapRow(ResultSet rs, int rowNum) throws SQLException{
			Contents vo = new Contents();
			vo.setStx(rs.getInt("stx"));
			vo.setUserid(rs.getString("userid"));
			vo.setTitle(rs.getString("title"));
			vo.setContents(rs.getString("contents"));
			vo.setPhoto(rs.getString("photo"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}
	
	public Contents getContents(int stx) {
		Contents result = sqlSession.selectOne("Contents.getContents", stx);
		return result;
	}
	
	public List<Contents> getContentsList(){
		List<Contents> result = sqlSession.selectList("Contents.getContentsList", new ContentsRowMapper());
		return result;
	}
}