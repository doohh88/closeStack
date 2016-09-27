<%@page import="com.ssmksh.closestack.C"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%
	String cp = request.getContextPath();
%>
<%--ContextPath ���� --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="<%=cp%>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=cp%>/resources/bootstrap/css/simple-sidebar.css"
	rel="stylesheet">
<title>Instance</title>
</head>
<body>
	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav nav">
				<li class="sidebar-brand"><a href="<%=C.Url.OVERVIEW%>">
						CloseStack </a></li>
				<li><a href="<%=C.Url.OVERVIEW%>"> Overview </a></li>
				<li class="active"><a href="<%=C.Url.INSTANCE%>"><i></i>
						Instance </a></li>
				<li><a href="<%=C.Url.IMAGE%>"> Image </a></li>
				<li><a href="<%=C.Url.NETWORK%>"><i></i> Network </a></li>

			</ul>
		</div>
		<!-- /#sidebar-wrapper -->


		<div class="container-fluid"
			style="margin-left: 50px; margin-right: 50px">
			<div class="col-lg-12">
				<h1 class="page-header">Instance</h1>
			</div>


			<div align="right" style="margin-bottom: 20px">

				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#createInstance">+ �ν��Ͻ� ����</button>
				<button type="button" class="btn btn-danger">�ν��Ͻ� ����Ʈ ����</button>
				<button type="button" class="btn btn-danger">�ν��Ͻ�����</button>
			</div>


			<table class="table table-bordered table-striped" data-height="299">
				<thead>
					<tr>
						<th data-field="check"><input name="select" type="checkbox"
							value="select" /></th>
						<th data-field="instance_name">�ν��Ͻ� �̸�</th>
						<th data-field="image_name">�̹��� �̸�</th>
						<th data-field="ip">IP �ּ�</th>
						<th data-field="size">ũ��</th>
						<th data-field="key">Ű ���</th>
						<th data-field="status">����</th>
						<th data-field="possible">���뼺 ��</th>
						<th data-field="work">�۾�</th>
						<th data-field="power_status">���� ����</th>
						<th data-field="running_time">���� �ð�</th>
					</tr>

					
				</thead>
			</table>



		</div>
	</div>


	</div>
	<!-- /#wrapper -->


	<div class="modal fade" id="createInstance" tabindex="-1" role="dialog"
		aria-labelledby="createInstance" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">X</button>
					<h4 class="modal-title" id="myModalLabel">�ν��Ͻ� ����</h4>
				</div>
				<div class="modal-body" >
					<form role="form" action="creatInstanceProc" method="post">
						<fieldset>
							<div class="col-md-6" padding="5px">
								
								<h5> �ν��Ͻ� �̸�: </h5>
								<input class="form-control" placeholder="Instance Id" name="instanceId"	type="text" autofocus>
								
								<h5> �ν��Ͻ� �н�����: </h5>
								<input class="form-control" placeholder="Instance PW" name="instancePw"	type="passward" autofocus>
								
								<h5> Flavor: </h5>
 								<div class="dropdown">
								  	<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" >
								    Flavor Menu
								    <span class="caret"></span>
								  	</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu4">
									<thead>
									
										<c:forEach items="${flavorList}" var="dto">
											 <li><a href="#" class="drop" data-bind="click: $parent.status">${dto.name}</a></li>
										</c:forEach>
									
									</thead>	
									</ul>
								</div>
							</div>
							<div class="col-md-6" padding="5px" style="">
								<div>
								<h6>Flavor ���� ����</h6>
								</div>
								<div>
									<div class="col-md-6">
										<h4><b>�̸�</b></h4>
									</div>
									<div class="col-md-6">
										<h4 id="flavorName">m1.tiny</h4>
									</div>
								</div>
								<div>
									<div class="col-md-6">
										<h4><b>vCpus</b></h4>
									</div>
									<div class="col-md-6" >
										<h4 id="flavorvCpus">1</h4>
									</div>
								</div>
								<div>
									<div class="col-md-6" >
										<h4><b>RAM</b></h4>
									</div>
									<div class="col-md-6" >
										<h4 id="flavorRam">512</h4>
									</div>
								</div>
					
							</div>
						</fieldset>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" type="submit">����</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">���</button>
					
				</div>
			</div>
		</div>
	</div>






	<script src="http://code.jquery.com/jquery-2.1.1.min.js"
		type="text/javascript"></script>
	<script
		src="<%=cp%>/resources/bower_components/jquery/dist/jquery.min.js"></script>
	<script
		src="<%=cp%>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	 var list = "${hashMapFlavor}"
	
	
	$('.drop').click(function(e){
		console.log("click")
		var name;
		var vCpus;
		var ram;
		
		<c:forEach items="${flavorList2}" var="dto">
		
			var tmp = "${dto.name}" 
			if(tmp==$(this).text())
			{
				name = tmp
				vCpus = "${dto.vCpus}"
				
				if("${dto.ram}" > 3)
					ram = "${dto.ram}"+" MB"
				else
					ram = "${dto.ram}"+" GB"
			}
			
		</c:forEach>
			   
		$('#dropdownMenu1').text($(this).text());
		$('#flavorName').text(name);
		$('#flavorvCpus').text(vCpus);
		$('#flavorRam').text(ram);
			
		
	});
	</script>

</body>


</html>


