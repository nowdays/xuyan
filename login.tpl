<html>
<head>
	<link href="static/css/login.css" rel="stylesheet"/>
	<meta content="text/html; charset=utf8" http-equiv="Content-Type">
	<meta http-equiv="Content-Language" contect="zh-CN">
<title>登录</title>
</head>

<body>
	<div>
		<center>
			<h1>登录</h1>
		</center>
	</div>
	<div>
		<center>
		
			<label for="login_field">用户名或邮箱</label><p>
			<input class="input-block" id="login_field" name="user[name/email]" size="30" type="text" /><p>
			<label for="password">密码</label><p>
			<input class="input-block" id="password" name="password" size="30" type="password" /><p>
			<input class="button" name="commit" type="submit" value="登录" />
			<a href="/registration" button class="button" type="submit">注册</button></a><p>
			
		
		</center>
	</div>

</body>
</html>