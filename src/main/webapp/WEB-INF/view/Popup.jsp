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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><br>
<div class="col-sm-12">
<div class="input-group mb-3">
  <input type="text" class="form-control" name="itemType" id="itemType" placeholder="Search ItemType" >
  <div class="input-group-append">
   <button class="btn btn-outline-secondary" type="button" onclick = "viewItems()">Search</button>
  </div>
</div>
<div id="items" style="margin-left: 21%;">

</div>
</div>

</body>
<script type="text/javascript">

$(document).ready(function() {
	const urlParams = new URLSearchParams(window.location.search);
	const myParam = urlParams.get('itemType');
	$.ajax({
		type : "GET",
		url : "http://localhost:6060/getItemType?itemType="+myParam,
		dataType : 'json',
		success : function(data) {
			getItems(data);
		},
		error : function(f) {
			getItems(f);
		}
	});
});

function getItems(response) {
	var htmlElements ='<table><tr><th style="text-align: center;">ItemType</th></tr>';
	
	for(var i=0; i<response.length; i++) {
		htmlElements += '<tr><td ><input type="hidden"  id="sno" name="sno" value="'+(i+1)+'" />'
		+'<input type="text" style="text-align: center;" name="items"  id="'+(i+1)+'" value="'+response[i].itemType+'" onclick ="myFunction(id)"/></td></tr>';
	}
	htmlElements +='</table>';
	var container = document.getElementById("items");
	container.innerHTML = htmlElements;
	return false;
	
}

function myFunction(items) {
	window.opener.document.transactionForm.itemType.value = document.getElementsByName("items")[items-1].value;
	window.close();
}
	
function viewItems() {
	var items = document.getElementById("itemType").value;
	$.ajax({
		type : "GET",
		url : "http://localhost:6060/getItemType?itemType="+items,
		dataType : 'json',
		success : function(data) {
			getItems(data);
		},
		error : function(f) {
			getItems(f);
		}
	});

	
}

</script>
</html>