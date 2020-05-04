$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

$(document).on("click", "#btnSave", function(event) {
	// alert("save btn clicked");

	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form validation-------------------
	var status = validateItemForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

	var type = ($("#DoctorIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "DoctorAPI",
		type : type,
		data : $("#formdoctor").serialize(),
		dataType : "text",
		complete : function(response, status) {
			onItemSaveComplete(response.responseText, status);
		}
	});

	// If valid------------------------
	$("#formItem").submit();
});

// UPDATE==========================================
$(document).on("click",".btnUpdate",function(event) {
//	alert("update btn clicked");
			$("#DoctorIDSave").val($(this).closest("tr").find('td:eq(0)').text());
			$("#doctorname").val($(this).closest("tr").find('td:eq(1)').text());
			$("#email").val($(this).closest("tr").find('td:eq(2)').text());
			$("#phonenumber").val($(this).closest("tr").find('td:eq(3)').text());
			$("#doctorspecialization").val($(this).closest("tr").find('td:eq(4)').text());
			$("#workhospital").val($(this).closest("tr").find('td:eq(5)').text());
});

// CLIENT-MODEL================================================================
function validateItemForm() {
	// CODE
	if ($("#doctorname").val().trim() == "") {
		return "Insert Doctor Name.";
	}
	// NAME
	if ($("#email").val().trim() == "") {
		return "Insert Email.";
	}
	// PRICE-------------------------------
	if ($("#phonenumber").val().trim() == "") {
		return "Insert Phone Number.";
	}
	// is numerical value
	// var tmpPrice = $("#doctorspecialization").val().trim();
	// if (!$.isNumeric(tmpPrice)) {
	// return "Insert a numerical value for Item Price.";
	// }

	if ($("#doctorspecialization").val().trim() == "") {
		return "Insert Doctor Specialization.";
	}

	// DESCRIPTION------------------------
	if ($("#workhospital").val().trim() == "") {
		return "Insert Work Hospital.";
	}
	return true;
}

// -----save completed func-
function onItemSaveComplete(response, status) {
	if (status == "success") {
		console.log(response);
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#DoctorIDSave").val("");
	$("#formItem")[0].reset();
}
