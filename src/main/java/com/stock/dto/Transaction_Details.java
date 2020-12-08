package com.stock.dto;

public class Transaction_Details {
	
	private String companyCode;
	private String transactionnumber;
	private String transactiondate;
	private String itemtypecode;
	private String productcode;
	private String logicalwarehousecode;
	private String zone;
	private String locationcode;
	private float quantity;
	private String lot;
	private String cnritemtype;
	private String cnrcode;
	private String containerelement;
	private float primaryqty;
	private String primaryuom;
	private float packagqty;
	private String packaguom;
	
	
	
	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public String getTransactionnumber() {
		return transactionnumber;
	}

	public void setTransactionnumber(String transactionnumber) {
		this.transactionnumber = transactionnumber;
	}

	public String getTransactiondate() {
		return transactiondate;
	}

	public void setTransactiondate(String transactiondate) {
		this.transactiondate = transactiondate;
	}

	public String getItemtypecode() {
		return itemtypecode;
	}

	public void setItemtypecode(String itemtypecode) {
		this.itemtypecode = itemtypecode;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public String getLogicalwarehousecode() {
		return logicalwarehousecode;
	}

	public void setLogicalwarehousecode(String logicalwarehousecode) {
		this.logicalwarehousecode = logicalwarehousecode;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getLocationcode() {
		return locationcode;
	}

	public void setLocationcode(String locationcode) {
		this.locationcode = locationcode;
	}

	
	public String getLot() {
		return lot;
	}

	public void setLot(String lot) {
		this.lot = lot;
	}

	public String getCnritemtype() {
		return cnritemtype;
	}

	public void setCnritemtype(String cnritemtype) {
		this.cnritemtype = cnritemtype;
	}

	public String getCnrcode() {
		return cnrcode;
	}

	public void setCnrcode(String cnrcode) {
		this.cnrcode = cnrcode;
	}

	public String getContainerelement() {
		return containerelement;
	}

	public void setContainerelement(String containerelement) {
		this.containerelement = containerelement;
	}

	
	public String getPrimaryuom() {
		return primaryuom;
	}

	public void setPrimaryuom(String primaryuom) {
		this.primaryuom = primaryuom;
	}

	

	public float getPackagqty() {
		return packagqty;
	}

	public void setPackagqty(float packagqty) {
		this.packagqty = packagqty;
	}

	public String getPackaguom() {
		return packaguom;
	}

	public void setPackaguom(String packaguom) {
		this.packaguom = packaguom;
	}

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public float getPrimaryqty() {
		return primaryqty;
	}

	public void setPrimaryqty(float primaryqty) {
		this.primaryqty = primaryqty;
	}
	

}
