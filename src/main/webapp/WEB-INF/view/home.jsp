<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stock Transactions</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<style type="text/css">
#customers {
	FONT-SIZE: 11px;
	FONT-FAMILY: Verdana;
	COLOR: #000000;
	border-collapse: collapse;
	width: 200%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 2px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	BACKGROUND-COLOR: #3948A5;
	COLOR: #ffffff;
}

#ReportTabBody {
	position: relative;
	display: block;
	width: 100%;
	height: 340px;
	overflow: auto;
	background-color: #ffece6;
}

#ReportTabBody td {
	background-color: white;
}

.ReportTabBodyRow {
	FONT-SIZE: 11px;
	FONT-FAMILY: Verdana;
	COLOR: #000000;
	BORDER: none;
	BORDER-BOTTOM: #777474 1PX SOLID;
	BORDER-LEFT: #777474 1PX SOLID;
	BORDER-TOP: #777474 1PX SOLID;
	BORDER-RIGHT: #777474 1PX SOLID;
	BACKGROUND-COLOR: #f2f2f2;
	border: none;
	height: 20px;
}

.ReportTabBodyRowEditable {
	FONT-SIZE: 11px;
	FONT-FAMILY: Verdana;
	COLOR: #000000;
	BORDER: none;
	BORDER-BOTTOM: #777474 1PX SOLID;
	BORDER-LEFT: #777474 1PX SOLID;
	BORDER-TOP: #777474 1PX SOLID;
	BORDER-RIGHT: #777474 1PX SOLID;
}

#freezeTab {
	position: relative;
	background-color: #FFECE6;
	overflow: auto;
	border-collapse: collapse;
	display: block;
}

#freezeTabHead {
	position: relative;
	display: block;
	BACKGROUND-COLOR: #3948A5;
	COLOR: #ffffff;
	BACKGROUND-REPEAT: repeat-x;
	FONT-WEIGHT: bold;
	FONT-SIZE: 11px;
	VERTICAL-ALIGN: middle;
	FONT-FAMILY: Verdana;
	TEXT-ALIGN: center;
}

#freezeTabHead td {
	min-width: 156px;
	height: 25px;
}

#freezeTabHead td:nth-child(1) {
	min-width: 56px;
	height: 25px;
	position: relative;
}

#freezeTabHead td:nth-child(2) {
	position: relative;
}

#freezeTabHead td:nth-child(3) {
	position: relative;
}

#freezeTabHead td:nth-child(6) {
	min-width: 56px;
	height: 25px;
	position: relative;
}

#freezeTabHead td:nth-child(8) {
	min-width: 300px;
	height: 25px;
	position: relative;
}

#freezeTabHead td:nth-child(13) {
	min-width: 76px;
	height: 25px;
	position: relative;
}

#freezeTabBody {
	position: relative;
	display: block;
	height: 200px;
	background-color: #ffece6;
}

#freezeTabBody td {
	background-color: white;
	min-width: 156px;
}

#freezeTabBody tr td:nth-child(1) {
	min-width: 56px;
	position: relative;
	background-color: white;
}

#freezeTabBody tr td:nth-child(2) {
	position: relative;
	background-color: white;
}

#freezeTabBody tr td:nth-child(3) {
	position: relative;
	background-color: white;
}

#freezeTabBody tr td:nth-child(6) {
	min-width: 56px;
	height: 25px;
	position: relative;
}

#freezeTabBody tr td:nth-child(8) {
	min-width: 300px;
	height: 25px;
	position: relative;
}

#freezeTabBody tr td:nth-child(13) {
	min-width: 76px;
	height: 25px;
	position: relative;
}

#table-wrapper {
	position: relative;
}

#table-scroll {
	height: 150px;
	overflow: auto;
	margin-top: 20px;
}

#table-wrapper table {
	width: 100%;
}

#table-wrapper table * {
	color: black;
}

#table-wrapper table thead th .text {
	position: absolute;
	top: -20px;
	z-index: 2;
	height: 20px;
	width: 35%;
	border: 1px solid black;
}

.center {
	margin: 0;
	position: absolute;
	top: 95%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
</head>
<script type="text/javascript">
	
</script>

<body style="background-color: ghostwhite;">
	<br>
	<div class="container"
		style="max-width: initial; background-color: #1515ca;">
		<div class="row"></div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h3 style="color: white; font-family: cursive;">Stock
					Transaction Details</h3>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
	<br>
	<div class="container" style="max-width: max-content;">
		<form name="transactionForm">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label>Item Type:</label> <input type="text" class="form-control"
							id="itemType" name="itemType" ondblclick="openPopUpPage()">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>From Date:</label> <input type="date" class="form-control"
							id="fromDate" name="fromDate">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>To Date:</label> <input type="date" class="form-control"
							id="toDate" name="toDate">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>Project Number:</label> <input type="text"
							class="form-control" id="projectNumber" name="projectNumber">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>Product Code:</label> <input type="text"
							class="form-control" id="companyCode" name="companyCode">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>From Transaction Number:</label> <input type="text"
							class="form-control" id="fromTransactionNumber"
							name="fromTransactionNumber">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>To Transaction Number:</label> <input type="text"
							class="form-control" id="toTransactionNumber"
							name="toTransactionNumber">
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col">
					<div class="form-group">
						<label>From Bag No:</label> <input type="text"
							class="form-control" id="fromBagNo" name="fromBagNo">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>To Bag No:</label> <input type="text" class="form-control"
							id="toBagNo" name="toBagNo">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>From Lot No:</label> <input type="text"
							class="form-control" id="fromLotNo" name="fromLotNo">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>To Lot No:</label> <input type="text" class="form-control"
							id="toLotNo" name="toLotNo">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>Logical Warehouse:</label> <input type="text"
							class="form-control" id="logicalWareHouse"
							name="logicalWareHouse">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label> </label>
						<button type="button" class="btn btn-primary btn-sm"
							style="margin-top: 16%;">View</button>
					</div>
				</div>

			</div>
			</form>
	</div>
	<div class="container col-sm-12" id="addItems">
		<!-- 		<table cellspacing="0" cellpadding="0" border="0" style="width: 99%"> -->
		<!-- 			<tr> -->
		<!-- 				<td> -->
		<!-- 					<table cellspacing="0" cellpadding="1" border="1" -->
		<!-- 						style="width: 99%"> -->
		<!-- 						<tr style="color: white; background-color: grey"> -->
		<!-- 							<th style="width: 1.5%; text-align: center;"></th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Date</th> -->
		<!-- 							<th style="width: 9%; text-align: center;">Transaction No</th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Item Type</th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Item Code</th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Warehouse</th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Zone</th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Location</th> -->
		<!-- 							<th style="width: 7%; text-align: center;">Quality</th> -->
		<!-- 							<th style="width: 10%; text-align: center;">Lot</th> -->
		<!-- 							<th style="width: 10%; text-align: center;">CNR Item Type</th> -->
		<!-- 							<th style="width: 10%; text-align: center;">CNR Code</th> -->
		<!-- 							<th style="width: 10%; text-align: center;">Container -->
		<!-- 								Element</th> -->
		<!-- 						</tr> -->
		<!-- 					</table> -->
		<!-- 				</td> -->
		<!-- 			</tr> -->
		<!-- 			<tr> -->
		<!-- 				<td> -->
		<!-- 					<div style="width: 100%; height: 380px; overflow: auto;"> -->
		<!-- 						<table cellspacing="0" cellpadding="1" border="1" -->
		<!-- 							style="width: 99%"> -->
		<!-- 							<tr> -->
		<!-- 								<td style="width: 1%;"><input type="checkbox" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 9%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 7%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 10%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 10%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 10%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 								<td style="width: 10%;"><input type="text" -->
		<!-- 									style="width: 100%;" value="'+resulJson[i].companyCode+'" /></td> -->
		<!-- 							</tr> -->
		<!-- 						</table> -->
		<!-- 					</div> -->
		<!-- 				</td> -->
		<!-- 			</tr> -->
		<!-- 		</table> -->

	</div>
	<div></div>

	<div class="container">
		<div class="center">
			<button type="button" class="btn btn-primary btn-sm"
				style="margin-top: 16%;">Submit</button>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {

		$.ajax({
			type : "GET",
			url : "http://localhost:6060/test",
			dataType : 'json',
			success : function(data) {
				addDivDetails(data);
			},
			error : function(f) {
				addDivDetails(f);
			}
		});
	});

	function openPopUpPage() {
		window
				.open(
						"/home/popupPage?itemType="
								+ document.getElementById('itemType').value,
						"_targetWindow",
						"toolbar=no, scrollbars=yes, resizable=yes, top=80, left=500, width=410, height=470");
		return false;
	}

	var addDivDetails = function(resulJson) {
		var htmlElements = '<div style="overflow-x:auto;"><table id="customers">'
				+ '<thead>'
				+ '<tr>'
				+ '<th style="text-align: center;"><input type="checkbox" /></th>'
				+ '<th style="text-align: center;">Date</th>'
				+ '<th style="text-align: center;">Transaction No</th>'
				+ '<th style="text-align: center;">Item Type</th>'
				+ '<th style="text-align: center;">Item Code</th>'
				+ '<th style="text-align: center;">Warehouse</th>'
				+ '<th style="text-align: center;">Zone</th>'
				+ '<th style="text-align: center;">Location</th>'
				+ '<th style="text-align: center;">Quality</th>'
				+ '<th style="text-align: center;">Lot</th>'
				+ '<th style="text-align: center;">CNR Item Type</th>'
				+ '<th style="text-align: center;">CNR Code</th>'
				+ '<th style="text-align: center;">Container Element</th>'
				+ '<th style="text-align: center;">Primary UOM</th>'
				+ '<th style="text-align: center;">Primary Quality</th>'
				+ '<th style="text-align: center;">Packing UOM</th>'
				+ '<th style="text-align: center;">Packing Quality</th>'
				+ '</tr></thead><tbody>';

		for (var i = 0; i < resulJson.length; i++) {
			htmlElements += '<tr><td style="width: 0.5%; text-align: center;""><input type="checkbox" /></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].transactiondate
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].transactionnumber
					+ '" readOnly = true /></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].itemtypecode
					+ '"  readOnly = true/></td>'
					+ '<td><input type="textarea" rows="2"  style="width: 100%;border: none;" value="'
					+ resulJson[i].productcode
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].logicalwarehousecode
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].zone
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].locationcode
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].quantity
					+ '" /></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].lot
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].cnritemtype
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].cnrcode
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].containerelement
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].primaryuom
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].primaryqty
					+ '"  /></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].packaguom
					+ '"  readOnly = true/></td>'
					+ '<td><input type="text"  style="width: 100%;border: none;" value="'
					+ resulJson[i].packagqty + '"  /></td>';

		}
		htmlElements += '</tr></tbody></table></div>';
		var container = document.getElementById("addItems");
		container.innerHTML = htmlElements;

	}
</script>
</html>
