<html>
<head>
	<link href="static/css/registration.css" rel="stylesheet"/>
	<meta content="text/html; charset=utf8" http-equiv="Content-Type">
	<meta http-equiv="Content-Language" contect="zh-CN">
<title>邮箱验证注册</title>
</head>

<body>
	<a href="/initdb">初始化数据库</a>
    <form action="/getdata" method="get">
	<div>
		<center>
        <h1>创建一个账户</h1>
	    <label class="control-label" for="user_username">用户名</label><p>
		<input class="input-large check-username" id="user_username" name="user[username]" size="30" type="text" /><div class="control-group"/><p>
	    <label class="control-label" for="user_email">邮箱</label><p>
		<input class="input-large check-email" id="user_email" name="user[email]" size="30" type="text" /><div class="control-group"/><p>
		<label class="control-label" for="user_password">密码</label><p>
		<input class="input-large" id="user_password" name="user[password]" size="30" type="password" /><div class="control-group"/><p>
		<label class="control-label" for="user_password_confirmation">密码确认</label><p>
		<input class="input-large" id="user_password_confirmation" name="user[password_confirmation]" size="30" type="password" /><div class="control-group"/><p>
		<input class="btn btn-large btn-primary" name="commit" type="submit" value="注册" />
		</center>
	</div>
	<a href="/showdb">管理界面</a>
    </form>

</body>
</html>