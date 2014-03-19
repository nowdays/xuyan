<html>
<head>
	<link href = "static/css/retrievepassword.css" rel="stylesheet"/>
	<meta content = "text/html; charset=utf8" http-equiv="Content-Type">
	<meta http-equiv = "Content-Language" contect="zh-CN">
<title>忘记密码？</title>
</head>

<body>
    <div id = "container">
	<div id = "menu">
		<ul>                                                    
			<li>
			<a href = "/">登陆</a>
			</li>
			<li class="tiao"></li>
			<li>
			<a href = "/registration">注册</a>
			</li>
		</ul>
	</div>
	<div id = "main">
		<div class="centerbox">
			<div class="tit">
			<h1>忘记密码</h1>
			</div>
			<div class="contect">
			<ul>
			<form action = "/getpassword" method = "get">
			<label for="email_field">用户名</label>
			<input class="input-block" id="user_username" name="username" type="text" value="" /><p>
			<label for="email_field">邮箱</label>&nbsp&nbsp
			<input class="input-block" id="email_field" name="email" type="text" value="" /><p>
			<input class = "btn btn-large btn-primary" name = "commit" type = "submit" value = "确定" />
			</form>
			<label for = "user_password">密码</label>&nbsp&nbsp
			<input class = "input-block" id = "user_password" name = "password" type = "password" /><p>
			<a href="/" button class = "button" type = "submit">返回</button></a>
			</ul>
			</div>
		</div>
	</div>
	</div>
</body>
</html>