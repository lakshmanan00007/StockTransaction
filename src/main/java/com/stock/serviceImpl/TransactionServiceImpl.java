package com.stock.serviceImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.stock.dto.ItemType;
import com.stock.dto.Transaction_Details;
import com.stock.service.TransactionService;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Transaction_Details> getAllTransactions() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ItemType> getItems(String itemtype) {
		StringBuffer buffer = new StringBuffer();
		
		if(itemtype == null || itemtype =="" ) {
			buffer.append(" SELECT CODE FROM code ");
		} else {
			buffer.append("SELECT CODE FROM code where code='"+itemtype+"' ");
		}
		return jdbcTemplate.query(
				buffer.toString(),
			    new RowMapper<ItemType>() {
			        public ItemType mapRow(ResultSet rs, int rowNum) throws SQLException {
			        	ItemType c = new ItemType();
			            c.setItemType(rs.getString("code"));
			            return c;
			        }
			    });
	}

}
