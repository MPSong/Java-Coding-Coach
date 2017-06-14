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
						<h1 class="page-header">Stack이란?</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12 col-md-6">
						<p>JAVA 에서 제공하는 Stack 클래스는 java.util.Stack 을 import 해주면 사용할 수 있다.</p>
						<p>Stack 은 <strong>FILO(First in Last Out)</strong>으로, 마지막에 들어간 자료가 제일 처음 나오게 된다.</p> 
						<p>이때 자료를 저장하는 것을 <em>Push</em>, 자료를 꺼내는 것을 <em>Pop</em>이라고 하며, <em>pop</em>을 수행할 시 나오게 되는 data를 꺼내지 않고, 미리 보는 것을 <em>Peek</em>이라 한다.</p> 
						<p>따라서 Stack 클래스에서는 다음과 같은 메소드를 제공한다.</p>						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-edit fa-fw"></i>메소드 설명
							</div>
							<div class="panel-body">
								<table class="table table-striped table-bordered">
									<tr class="active">
										<td align="center"><strong>반 환 형</strong></td>
										<td align="center"><strong>메 소 드</strong></td>
										<td align="center"><strong>설 &nbsp;&nbsp;&nbsp;명</strong></td>
									</tr>
									<tr class="active">
										<td align="center">boolean</td>
										<td align="center">empty()</td>
										<td>현재 stack이 비어있는 지 검사한다.</td>
									</tr>
									<tr class="active">
										<td align="center">E(데이터의 자료형)</td>
										<td align="center">peek()</td>
										<td>stack에서 자료를 꺼내지 않고, 다음에 꺼낼 자료를 확인한다.</td>
									</tr>
									<tr class="active">
										<td align="center">E(데이터의 자료형)</td>
										<td align="center">pop()</td>
										<td>stack에서 가장 top(마지막에 push한 데이터)에 있는 자료를 꺼낸다.</td>
									</tr>
									<tr class="active">
										<td align="center">E(데이터의 자료형)</td>
										<td align="center">push(E item)</td>
										<td>Stack의 top에 자료를 저장한다.</td>
									</tr>
									<tr class="active">
										<td align="center">int</td>
										<td align="center">search(Object o)</td>
										<td>한 자료에 대한 stack에서의 위치를 반환한다.</td>
									</tr>
								
								
								</table>
				

							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-8">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-edit fa-fw"></i>예 시
							</div>
							<div class="panel-body">
								<img src="../img/stack.jpg" class="img-responsive"></img>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-paperclip fa-fw"></i>예 시 설 명
							</div>
							<div class="panel-body">
							<p>0 &nbsp;: 1 이 stack 에 들어가 있다.</p>
							<p>1 &nbsp;: stack.push(2);</p>
							<p>2 &nbsp;: stack.push(3);</p>
							<p>3 &nbsp;: stack.push(4);</p>
							<p>4 &nbsp;: stack.push(5);</p>
							<p>5 &nbsp;: stack.push(6);</p>
							<p>6 &nbsp;: stack.pop();</p>
							<p>7 &nbsp;: stack.pop();</p>
							<p>8 &nbsp;: stack.pop();</p>
							<p>9 &nbsp;: stack.pop();</p>
							<p>10 : stack.pop();</p>							
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
