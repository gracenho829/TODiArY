package com.project1.ToDiArY;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.project1.ToDiArY.Member;

public class MemberDAO {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Member p) {
		String sql = "insert into ProjMember(userid,username,password) values('" + p.getUserid() + "'," + p.getUsername() + ",'"
				+ p.getPassword() + "')";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from ProjMember where id=" + id + "";
		return template.update(sql);
	}

	public Member getMemberById(int id) {
		String sql = "select * from ProjMember where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Member>(Member.class));
	}

	public List<Member> getMemberloyees() {
		return template.query("select * from ProjMember", new RowMapper<Member>() {
			public Member mapRow(ResultSet rs, int row) throws SQLException {
				Member e = new Member();
				e.setUserid(rs.getString(1));
				e.setUsername(rs.getString(2));
				e.setRegdate(rs.getDate(3));
				return e;
			}
		});
	}
}

