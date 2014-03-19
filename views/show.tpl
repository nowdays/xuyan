<html>
<head>
	<link href="static/css/show.css" rel="stylesheet"/>
	<title>管理界面</title>
</head>
<body>
	<div id = "container">
	<div id = "main">
		<div class = "centerbox">
		<div class = "center">
			<div class = "tit">
			<h2>管理界面</h2>
			</div>
		<table>
		<div class = "content">
		<ul>
		<th>
			<td>用户编号</td>
			<td>用户名</td>
			<td>邮箱</td>
			<td>密码</td>
		</th>
		%for user in userlist:
		<tr>
			<td></td>
			%for ur in user:
			<td> {{ur}} </td>
			%end
		</tr>
		%end
		</ul>
		<li>
		<input class = "btn btn-large btn-primary" name = "select" type = "submit" value = "查询" />
		</li>
		</div>
		</table>
		</div>
		</div>
	</div>
	</div>
</body>
</html>
