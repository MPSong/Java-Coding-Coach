<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test CodeMirror</title>
<link rel="stylesheet" href="lib/codemirror.css">
<script src="lib/codemirror.js"></script>
<!-- chosen theme stylesheet -->
<link rel="stylesheet" href="theme/cobalt.css">
<script src="mode/clike/clike.js"></script>
<script src="mode/xml/xml.js"></script>
</head>
<body>
	<form style="width: 500px;">
		<!-- Some random JS code placed in the textarea for demo purposes -->
		<textarea id="code" name="code"></textarea>

	</form>

	<script>
		window.onload = function() {
			window.editor = CodeMirror.fromTextArea(code, {
				mode : "text/x-java",
				lineNumbers : true,
				lineWrapping : true,
				theme : 'cobalt'
			});
		};
	</script>
</body>
</html>