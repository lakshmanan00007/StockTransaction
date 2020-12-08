package com.stock.service;

import java.util.List;

import com.stock.dto.ItemType;
import com.stock.dto.Transaction_Details;

public interface TransactionService {

	List<Transaction_Details> getAllTransactions();

	List<ItemType> getItems(String itemType);

}
