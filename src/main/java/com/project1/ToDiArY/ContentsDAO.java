package com.project1.ToDiArY;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.project1.ToDiArY.*;

public class ContentsDAO {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Contents p) {
		String sql = "insert into ProjContents(userid, contents, title, photo) values('" + p.getUserid() + "'," + p.getContents() + ",'"
				+ p.getTitle() + "'," + p.getPhoto() + "')";
		return template.update(sql);
	}

	public int update(Contents p) {
		String sql = "update ProjContents set contents='" + p.getContents() + "', title=" + p.getTitle() + ", photo='"
				+ p.getPhoto() + "' where stx=" + p.getStx() + "";
		return template.update(sql);
	}
	
	public int delete(int stx) {
		String sql = "delete from ProjContents where stx=" + stx + "";
		return template.update(sql);
	}
	
	public Contents getContentsById(int sid) {
		String sql = "select * from ProjContents where stx=?";
		return template.queryForObject(sql, new Object[] { sid }, new BeanPropertyRowMapper<Contents>(Contents.class));
	}

	public List<Contents> getContents1() {
		return template.query("select * from ProjContents", new RowMapper<Contents>() {
			public Contents mapRow(ResultSet rs, int row) throws SQLException {
				Contents e = new Contents();
				e.setPhoto(rs.getString(1));
				e.setRegdate(rs.getDate(2));
				return e;
			}
		});
	}
}
