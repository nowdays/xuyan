<html>
<head>
	<link href = "static/css/registration.css" rel="stylesheet"/>
	<meta content = "text/html; charset=utf8" http-equiv="Content-Type">
	<meta http-equiv = "Content-Language" contect="zh-CN">
<title>邮箱验证注册</title>
</head>

<body>
    <div id = "container">
	<div id = "menu">
		<ul>                                                       
			<li>                                                  
			<a href = "/initdb">初始化数据库</a>                                                  
			</li>                                                       
			<li class = "tiao"></li>                                                  
			<li>                                                  
			<a href = "/showdb">管理界面</a>                                                  
			</li>
			<li class = "tiao"></li>
			<li>
			<a href = "/">登陆</a>
			</li>
			<li class="tiao"></li>
			<li>
			<a href = "/registration">注册</a>
			</li>
		</ul>
	</div>
	<form action = "/getdata" method = "get">
	<div id = "main"> 
		<div class = "centerbox">                 
			<div class = "center"> 
			<div class = "tit">
          
			<h1>创建一个账户</h1></div>
			<div class = "content">
			<ul>
			<label class = "control-label" for="user_username">用户名</label><p>
			<input class = "input-large check-username" id = "user_username" name = "user_username" size = "30" type = "text" /><div class="control-group"/><p>
			<label class = "control-label" for = "user_email">邮箱</label><p>
			<input class = "input-large check-email" id = "user_email" name = "user_email" size = "30" type = "text" /><div class = "control-group"/><p>
			<label class = "control-label" for = "user_password">密码</label><p>
			<input class = "input-large" id = "user_password" name = "user_password" size = "30" type = "password" /><div class = "control-group"/><p>
			<label class = "control-label" for = "user_password_confirmation">密码确认</label><p>
			<input class = "input-large" id = "user_password_confirmation" name = "user_password_confirmation" size = "30" type = "password" /><div class = "control-group"/><p>
			<li>
			<input class = "btn btn-large btn-primary" name = "commit" type = "submit" value = "注册" />
			<a href = "/registration" button class = "button" type = "submit">重置</button></a>
			</li>
			</ul>
			</div>
			</div>
			</div>
		</div>
	</div>
    </form>  
	</div>
</body>
</html>