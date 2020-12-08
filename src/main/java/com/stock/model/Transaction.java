package com.stock.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


public class Transaction implements Serializable {

	private static final long serialVersionUID = -3179997570923746831L;

//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name ="Product_code", columnDefinition = "varchar(200)")
	private String productCode;

	public Transaction(String productCode) {
		this.productCode = productCode;
	}

	public Transaction() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	

}
