package com.stock.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.stock.dto.ItemType;
import com.stock.dto.Transaction_Details;
import com.stock.model.Transaction;
import com.stock.service.TransactionService;

@RestController
public class TransactionController {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	private TransactionService service;

	
	@RequestMapping("/test")
	public ResponseEntity<List<Transaction_Details>>  example() {
		System.out.println("enter..");
		return new ResponseEntity<>(this.jdbcTemplate.query("SELECT TD.TRANSACTIONNUMBER,TD.TRANSACTIONDATE,TD.ITEMTYPECODE ,"
				+ " (TRIM(TD.DECOSUBCODE01)||'-'||TRIM(TD.DECOSUBCODE02)||'-'||TRIM(TD.DECOSUBCODE03)||'-'||TRIM(TD.DECOSUBCODE04)||'-'||TRIM(TD.DECOSUBCODE05)||'-'||TRIM(TD.DECOSUBCODE06)||'-'||TRIM(TD.DECOSUBCODE07)||'-'||TRIM(TD.DECOSUBCODE08)||'-'||TRIM(TD.DECOSUBCODE09)||'-'||TRIM(TD.DECOSUBCODE10))ITEMCODE,"
				+ " TD.LOGICALWAREHOUSECODE,(TD.WHSLOCATIONWAREHOUSEZONECODE)ZONE,(TD.WAREHOUSELOCATIONCODE)LOCATION,(TD.USERPRIMARYQUANTITY)QTY,"
				+ " (TD.LOTCODE)LOT,(TD.CONTAINERELEMENTCODE)CONTAINERELEMENTCODE,(TD.BASEPRIMARYQUANTITY)PRIMARYQTY,(TD.BASEPRIMARYUOMCODE)PRIMARYUOM,(TD.USERPACKAGINGUOMCODE)PKGUOM,"
				+ " (TD.USERPACKAGINGQUANTITY)PKGQTY"
				+ " FROM TRANSACTION_DETAILS TD"
				+ " WHERE ITEMTYPECODE='KSG' AND TRANSACTIONDATE>=TO_DATE('01-01-2020','DD-MM-YYYY') AND  TRANSACTIONDATE<=TO_DATE('31-01-2020','DD-MM-YYYY')", 
				new EmployeeMapper()), HttpStatus.OK);
	}

	 private static final class EmployeeMapper implements RowMapper<Transaction_Details> {
		    public Transaction_Details mapRow(ResultSet rs, int rowNum) throws SQLException {
		    	Transaction_Details emp = new Transaction_Details();
		    	emp.setTransactionnumber(rs.getString("TRANSACTIONNUMBER"));
		    	emp.setTransactiondate(rs.getString("TRANSACTIONDATE"));
		    	emp.setItemtypecode(rs.getString("ITEMTYPECODE"));
		    	emp.setProductcode(rs.getString("ITEMCODE"));
		    	emp.setLogicalwarehousecode(rs.getString("LOGICALWAREHOUSECODE"));
		    	emp.setLocationcode(rs.getString("ZONE"));
		    	emp.setZone(rs.getString("LOCATION"));
		    	emp.setQuantity(rs.getFloat("QTY"));
		    	emp.setLot(rs.getString("LOT"));
		    	emp.setCnrcode("");
		    	emp.setCnritemtype("");
		    	emp.setContainerelement(rs.getString("CONTAINERELEMENTCODE"));
		    	emp.setPrimaryqty(rs.getFloat("PRIMARYQTY"));
		    	emp.setPrimaryuom(rs.getString("PRIMARYUOM"));
		    	emp.setPackagqty(rs.getFloat("PKGQTY"));
		    	emp.setPackaguom(rs.getString("PKGUOM"));
		    	System.out.println(rs.getFloat("PRIMARYQTY"));
		      //emp.setEmpId(rs.getInt("id"));
		      //emp.setEmpName(rs.getString("name"));
		      //emp.setAge(rs.getInt("age"));
		      return emp;
		    }
		  } 
	
	@GetMapping("/get")
	public List<Transaction> add() {
		System.out.println("get....");
		Transaction transaction = new Transaction("CODE 123");

		return null;
	}
	
	
	@PostMapping("/saveTransaction")
	private String saveTransaction(@RequestBody Transaction_Details transaction_Details) {
		
		this.jdbcTemplate.update(
		        "insert into TRANSACTION_DETAILS (first_name, surname) values (?, '"+transaction_Details.getLot()+"')");		
		return null;
		
	}
	
	@GetMapping("/getItemType")
	private ResponseEntity<List<ItemType>> getItemTypes(@RequestParam(value = "itemType") String itemType) {
		
		System.out.println(itemType);
		return new ResponseEntity<>(service.getItems(itemType), HttpStatus.OK);
	}
	
	
}
