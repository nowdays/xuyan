<html>
<head>
	<link href="static/css/login.css" rel="stylesheet"/>
	<meta content="text/html; charset=utf8" http-equiv="Content-Type">
	<meta http-equiv="Content-Language" contect="zh-CN">
<title>登录</title>
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
			<li>
			<a href = "/main">主页面</a>
			</li>
		</ul>
	</div>
	
	<div id = "main">
		<div class="centerbox">
			<div class="tit">
			<h1>登录</h1>
			</div>
			<div class="contect">
			<ul>
			<label for="login_field">用户名或邮箱</label><p>
			<input class="input-block" id="login_field" name="user[name/email]" size="30" type="text" /><p>
			<label for="password">
			密码<a href="/retrievepassword" button class="button" type="submit">(忘记密码)</button></a>
			</label><p>
			<input class="input-block" id="password" name="password" size="30" type="password" /><p>
			<input class="button" name="commit" type="submit" value="登录" />
			<a href="/registration" button class="button" type="submit">注册</button></a><p>
			</ul>
			</div>
		</div>
	</div>
	
	</div>

</body>
</html>