<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Java Coding Coach</title>
<!-- codeMirror-->
<link rel="stylesheet" href="../CodeMirror/lib/codemirror.css">
<script src="../CodeMirror/lib/codemirror.js"></script>
<link rel="stylesheet" href="../CodeMirror/theme/cobalt.css">
<script src="../CodeMirror/mode/clike/clike.js"></script>
<script src="../CodeMirror/mode/xml/xml.js"></script>

<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="FrontPage.jsp">Java Coding Coach</a>
		</div>
		<!-- /.navbar-header -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a class="Stack" href="Stack_Info.jsp">Stack</a></li>
					<li><a href="Stack_Info.jsp"><i class="fa fa-edit fa-fw"></i> Stack 이란?</a>
					</li>
					<li><a href="#"><i class="fa fa-edit fa-fw"></i>학 습<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="Step_Push.jsp">Stack의 선언과 Push연산</a></li>
							<li><a href="Step_empty.jsp">empty와 pop연산</a></li>
							<li><a href="Step_Peek.jsp">peek연산</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-edit fa-fw"></i>적 용<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="Project1.jsp">문자 역순 출력</a></li>
							<li><a href="Project2.jsp">후위 표기식 계산</a></li>
						</ul> <!-- /.nav-second-level --></li>


				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Stack의 선언과 Push연산</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12 col-md-6">
						<p>Stack클래스의 객체 stack을 Integer형으로 선언하고</p>
						<p>push연산을 이용해 3개의 정수형 자료를 stack에 넣는다.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-edit fa-fw"></i>코드 작성
							</div>
							<div class="panel-body">
								<!-- Some random JS code placed in the textarea for demo purposes -->
								<textarea id="code" name="code">class Stack{								
								
    public static void main(String[] args) {						
								
								
								
								
								
	}							
}                               </textarea>
								<script>
								var texts;
								var fun = function trans(texts){
									
									
									$.ajax({
										type:'POST'
										,url:"Project3.jsp"
										,data:{"test":texts}
										,dataType:'text'
										,success:function(data){
											data = $.trim(data);
											$("#clipbody").text(data);
										}
										,error:function(data){
											alert("error");
										}
									});
									
									
								};
									var editor =  CodeMirror
									.fromTextArea(code, {
										mode : "text/x-java",
										lineNumbers : true,
										lineWrapping : true,
										
										theme : 'cobalt'
									});
									
									
									
									
									window.onload = function() {
										window.editor = editor;
									
										
										
									};
									
									editor.on("keyup",function(cm,e){
										if(e.keyCode==13){
											var text = document.getElementById("code");
											texts = editor.getValue();
											
											
											fun(texts);
										}
										
						
											
											
											
									} );
								</script>
								<div class="panel-footer">
									<!--  제출할 컴파일 결과 구현해야함 -->
									<button type="button" class="btn btn-success">
										<i class=" fa fa-save fa-fw"></i>제출하기
									</button>
								</div>

							</div>

						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-paperclip fa-fw"></i> Paper Clip
							</div>
							<div class="panel-body" id="clipbody"></div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-8">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-edit fa-fw"></i>컴파일 화면
							</div>
							<div class="panel-body">
								<textarea></textarea>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /#page-wrapper -->

	<!-- jQuery -->
	<script src="../vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
