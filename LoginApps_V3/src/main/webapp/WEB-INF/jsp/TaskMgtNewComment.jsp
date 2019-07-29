<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="customCss/welcomePageCss.css">
<title>Insert title here</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		loadData();
	});

	function loadData() {
		$
				.ajax({
					crossDomain : true,
					url : "/get_loggedin_user_info1",
					type : 'GET',
					dataType : 'json',
					success : function(data) {
						console.log(data);
						if (data == "" || data == null) {
							alert("No record found for  number");

						} else {
							$(data)
									.each(
											function() {
												document
												.getElementById("UserStory").innerHTML = data.UserStory;
												document
														.getElementById("employeeCode").innerHTML = data.employeeCode;
												document
														.getElementById("photo").src = data.employeeFileDetailsDb.fileDownloadUri;
												document
												.getElementById("fullName").innerHTML = data.employeeFirstName
												+ " "
												+ data.employeeLastName;
											});
						}
					},
					error : function(e) {
						alert("ERROR!!");

						console.log('errorThrown', e);
					}
				});
	}
</script>
</head>
<body>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		<div class="form">
					<div class="form-content">
		
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="UserStory"></label> <label
								id="UserStory"></label> 
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="employeeCode "></label> <label
								id="employeeCode"></label> 
						</div>
					</div>
			</div>
			<div class="row">
					<div class="col-sm-6">
						<div class="card">
							<img src="bg.jpg" alt="Card image cap" id="photo"
								style="height: 80px; width: 80px">
							<div class="card-body">
								<h5 class="card-title">
									<label id="fullName" style="color: white;"></label>
								</h5>
							</div>
						</div>
					</div>
</div>
				</div>
			</div>
		</div>
</body>
</html> --%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
	$('#my-summernote')
			.summernote(
					{
						minHeight : 200,
						placeholder : 'Write here ...',
						focus : false,
						airMode : false,
						fontNames : [ 'Roboto', 'Calibri', 'Times New Roman',
								'Arial' ],
						fontNamesIgnoreCheck : [ 'Roboto', 'Calibri' ],
						dialogsInBody : true,
						dialogsFade : true,
						disableDragAndDrop : false,
						toolbar : [
								// [groupName, [list of button]]
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'clear' ] ],
								[ 'para', [ 'style', 'ul', 'ol', 'paragraph' ] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[
										'font',
										[ 'strikethrough', 'superscript',
												'subscript' ] ],
								[ 'height', [ 'height' ] ],
								[
										'misc',
										[ 'undo', 'redo', 'print', 'help',
												'fullscreen' ] ] ],
						popover : {
							air : [
									[ 'color', [ 'color' ] ],
									[ 'font', [ 'bold', 'underline', 'clear' ] ] ]
						},
					});
	$('#my-summernote2').summernote({
		airMode : true,
		placeholder : 'Try the airmode'
	});
</script>
<style>
#div1 {
	height: 300px;
	width: 500px;
	border: 1px solid black;
	padding: 50px;
	margin-left: -10px;
}

body {
	font-family: 'Open Sans';
}

/* a {
  cursor: pointer;
} */
/* .editor
{
	position:relative;
} */
.editorAria {
	height: 100%;
	min-height: 400px;
	border: 1px solid #ddd;
	margin-top: -2px;
	outline: none;
}

.toolbar {
	position: sticky;
	top: 0;
	left: 0px;
	right: 0;
	background-color: #fff;
	border: 1px solid #ddd;
}

.toolbar a {
	border: 1px solid #ddd;
	background: #FFF;
	font-family: 'Candal';
	color: #000;
	padding: 3px;
	margin: 1px;
	width: 40px;
	height: 35px;
	display: inline-block;
	text-align: center;
	text-decoration: none;
}

.toolbar a:hover {
	background: #0eacc6;
	color: #fff;
	border-color: #0eacc6;
}
/* 
a.palette-item {
	display:inline-block;
  height: 1.3em;
  width: 1.3em;
  margin: 0px 1px 1px;
	cursor:pointer;
} */
a.palette-item[data-value="#FFFFFF"] {
	border: 1px solid #ddd !important;
}
.underline {
        text-decoration: underline;
        line-color:grey;
}

/* a.palette-item:hover {
  transform:scale(1.1);
}
 */
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		loadData();
	});

	function loadData() {
		$
				.ajax({
					crossDomain : true,
					url : "/get_loggedin_user_info1",
					type : 'GET',
					dataType : 'json',
					success : function(data) {
						console.log(data);
						var emptable = $('#list tbody');
						$('#list tbody').empty();
						if (data == "" || data == null) {
							alert("No record found for  number");

						} else {
							$(data)
									.each(
											function(index, task) {
												document
														.getElementById("fullName").innerHTML = data.employeeFirstName
														+ " "
														+ data.employeeLastName;
												document
														.getElementById("photo").src = data.employeeFileDetailsDb.fileDownloadUri;
												document
														.getElementById("employeeName").innerHTML = data.employeeFirstName
														+ " "
														+ data.employeeLastName;
												document
														.getElementById("employeeCode").innerHTML = data.employeeCode;
												document
														.getElementById("UserStory").innerHTML = data.UserStory;
												document
														.getElementById("employeeId").innerHTML = data.employeeId;
												document
														.getElementById("employeeStatus").innerHTML = data.employeeStatus;

												$
														.each(
																data.tasks,
																function(
																		index2,
																		task) {
																	document
																			.getElementById("taskStatus").innerHTML = task.taskStatus;
																});
											});
						}
					},
					error : function(e) {
						alert("ERROR!!");

						console.log('errorThrown', e);
					}
				});
	}
</script>
<script>
	
</script>
</head>
<body>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<div class="form-group">
					<b><label for="UserStory"></label> <label id="UserStory"></label>
						<label for="employeeCode" id=""><b> </b></label> <label
						id="employeeCode"></label></b>
				</div>
			</div>
			<div class="col-sm-8"></div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<b><label for="employeeId" id="employeeId"></label> <label
					id="employeeId"></label> <label for="employeeName"><b></b></label>
					<label id="employeeName"></label></b>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<img src="bg.jpg" style="width: 90px; height: 90px;"
					alt="Card image cap" id="photo">&nbsp; &nbsp;<label
					for="fullName"><select class="form-control" name="" id=""
					required>
						<option value="" selected>-- Select Name--</option>
						<option value="" id="fullName"></option>
				</select></label> <label id="fullName" style="color: blue;"></label>
			</div>
			<div class="col-sm-3"></div>
			<div class="col-sm-2">
				<button type="submit" value="Submit" class="btn btn-primary"
					id="btnSubmit"
					style="background: -webkit-linear-gradient(right, #0072ff, #8811c5); border: none;">
					<i class="far fa-save"> </i> Save & Close
				</button>
			</div>
		</div>
		<br>
		<div class="card">
			<div class="card-header">
				<div class="row">
					<div class="col-sm-3">
						<!-- <b><label for="employeeStatus" id="employeeStatus"><b>Employee Status:</b> </label><label
					id="employeeStatus"></label> <label for="employeeStatus"><b></b></label>
				<label id="employeeStatus"></label></b> -->
						<label for="employeeStatus"><b>Employee Status :</b></label> <label
							id="employeeStatus"></label>
					</div>
					<div class="col-sm-5"></div>
					<div class="col-sm-4">
						<!-- <b><label for="employeeStatus" id="employeeStatus"><b>Employee Status:</b> </label><label
					id="employeeStatus"></label> <label for="employeeStatus"><b></b></label>
				<label id="employeeStatus"></label></b> -->
						<label for="Reason"><b>Reason :</b></label> <label id="taskStatus"></label>
					</div>
				</div>
			</div>
		</div>

		<br>
	<!-- 	<div class="table-responsive">
			<table class="table table-sm" width="1500" id="list">
				<thead>
					<tr>
						<th id="" style="text-align: left"><div class="col-sm-8">Description</div></th>
						<th id=""><div class="col-sm-2">Planning</div></th>
						<th id=""><div class="col-sm-2">Development</div></th>
					</tr>
				</thead>
				<tbody>
				<tr>
				<td>
Textarea with icon prefix
</td>
				</tr>
				
				</tbody>
			</table>
		</div> -->
		<div class="col-sm-8 underline">&nbsp;<b>Description</b></div>
		<div class="row">
			<div class="col-sm-4">
				<div class="editor" id="editor-1">
					<div class="toolbar">
						<a href="#" data-command='bold' data-toggle="tooltip"
							data-placement="top" title="Bold"><i class='fa fa-bold'></i></a>
						<a href="#" data-command='italic' data-toggle="tooltip"
							data-placement="top" title="Italic"><i class='fa fa-italic'></i></a>
						<a href="#" data-command='underline' data-toggle="tooltip"
							data-placement="top" title="Underline"><i
							class='fa fa-underline'></i></a> <a href="#" data-command='indent'
							data-toggle="tooltip" data-placement="top" title="Indent"><i
							class='fa fa-indent'></i></a> <a href="#" data-command='outdent'
							data-toggle="tooltip" data-placement="top" title="Outdent"><i
							class='fa fa-outdent'></i></a> <a href="#"
							data-command='insertUnorderedList' data-toggle="tooltip"
							data-placement="top" title="Unordered list"><i
							class='fa fa-list-ul'></i></a> <a href="#"
							data-command='insertOrderedList' data-toggle="tooltip"
							data-placement="top" title="Ordered list"><i
							class='fa fa-list-ol'></i></a> <a href="#" data-command='createlink'
							data-toggle="tooltip" data-placement="top" title="Inser link"><i
							class='fa fa-link'></i></a> <a href="#" data-command='unlink'
							data-toggle="tooltip" data-placement="top" title="Unlink"><i
							class='fa fa-unlink'></i></a> <a href="#" data-command='insertimage'
							data-toggle="tooltip" data-placement="top" title="Insert image"><i
							class='fa fa-image'></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="card" style="width: 505px; height: 190px">
			<div class="card-header" style="background-color: #d5d5c3">
				<br>
			</div>
			<b>&nbsp; Comment Here : </b>
			<div>
				&nbsp; &nbsp;
				<textarea id="my-summernote2" name="editordata2"
					style="width: 440px; background-color: #ccffb3"></textarea>

				<br>
				<button type="submit" value="Cancel" id="btnSubmit"
					class="btn btn-primary"
					style="background-color: orange; float: right;">Cancel</button>
				<br>
			</div>
		</div>
	</div>

</body>
</html>
