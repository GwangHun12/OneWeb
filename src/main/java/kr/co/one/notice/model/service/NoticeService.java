package kr.co.one.notice.model.service;

import java.sql.*;
import java.util.List;

import common.JDBCTemplate;
import kr.co.one.notice.model.vo.PageData;
import kr.co.one.notice.model.dao.NoticeDAO;
import kr.co.one.notice.model.vo.Notice;

public class NoticeService {
	
	private NoticeDAO nDao;
	private JDBCTemplate jdbcTemplate;  

	public NoticeService() {  		
		nDao = new NoticeDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}
	public PageData selectNoticeList(int currentPage) {
		Connection conn = jdbcTemplate.createConnection();
		List<Notice> nList = nDao.selectNoticeList(conn, currentPage);
		String pageNavi = nDao.generatePageNavi(currentPage);
		PageData pd = new PageData(nList, pageNavi);
		jdbcTemplate.close(conn);
		return pd; 
	}

	public int insertNotice(Notice notice) {
		Connection conn = jdbcTemplate.createConnection();
		int result = nDao.insertNotice(conn, notice);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		} else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

}
