$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

$(document).on(
		"click",
		"#btnSave",
		function(event) {
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
					(type == "POST") ? onItemSaveComplete(
							response.responseText, status)
							: onItemUpdateComplete(response.responseText,
									status);
				},

			});

			// If valid------------------------
			// $("#formdoctor").submit();
		});

// UPDATE==========================================
$(document)
		.on(
				"click",
				".btnUpdate",
				function(event) {
					// alert("update btn clicked");
					$("#DoctorIDSave").val(
							$(this).closest("tr").find('td:eq(0)').text());
					$("#doctorname").val(
							$(this).closest("tr").find('td:eq(1)').text());
					$("#email").val(
							$(this).closest("tr").find('td:eq(2)').text());
					$("#phonenumber").val(
							$(this).closest("tr").find('td:eq(3)').text());
					$("#doctorspecialization").val(
							$(this).closest("tr").find('td:eq(4)').text());
					$("#workhospital").val(
							$(this).closest("tr").find('td:eq(5)').text());
				});

// DELETE==============================

$(document).on("click", ".btnRemove", function(event) {
	$.ajax({
		url : "DoctorAPI",
		type : "DELETE",
		data : "DoctorID=" + $(this).data("doctorid"),
		dataType : "text",
		complete : function(response, status) {
			onItemDeleteComplete(response.responseText, status);
		}
	});
});

// CLIENT-MODEL================================================================
function validateItemForm() {
	// NAME
	if ($("#doctorname").val().trim() == "") {
		return "Insert Doctor Name.";
	}
	var letters = /^[A-Za-z .]+$/;
	if (!$("#doctorname").val().trim().match(letters)) {
		return "You have entered a invalid name!";
	}
	// EMAIL
	if ($("#email").val().trim() == "") {
		return "Insert Email.";
	}
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if (!$("#email").val().trim().match(mailformat)) {
		return "You have entered an invalid email address!";
	}
	// PHONE NUMBER-------------------------------
	if ($("#phonenumber").val().trim() == "") {
		return "Insert Phone Number.";
	}
	var phoneno = /^\d{10}$/;
	if(!$("#phonenumber").val().trim().match(phoneno)){
		return "You have entered an invalid phone number";
	}
	// is numerical value
	// var tmpPrice = $("#doctorspecialization").val().trim();
	// if (!$.isNumeric(tmpPrice)) {
	// return "Insert a numerical value for Item Price.";
	// }
	// Doctor epcialization
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
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#DoctorTableBody").html(resultSet.data);
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

	$("#formdoctor")[0].reset();
}

function onItemUpdateComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully updated.");
			$("#alertSuccess").show();
			$("#DoctorTableBody").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while updating.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while updating..");
		$("#alertError").show();
	}
	$("#DoctorIDSave").val("");

	$("#formdoctor")[0].reset();
}

// ---delete complete func-
function onItemDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#DoctorTableBody").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}
