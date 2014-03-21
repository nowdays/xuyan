from bottle import run, route, template, debug, request, redirect
import sqlite3
import static
import smtplib
from email.mime.text import MIMEText
from email.header import Header
import random


class User:
	def __init__(self, user_username, user_email, user_password):
		self.user_username = user_username
		self.user_email = user_email
		self.user_password = user_password		
		
		
class Password:
	def __word__(self, user_name, password, msg):
		self.user_name = user_name
		self.password = password
		self.msg = msg
		
		
#登陆		
@route('/')
def login():
	return template('login')
	
	
@route("/getname")
def getname():
	user_name = request.GET.user_name
	user_password = request.GET.user_password
	con = sqlite3.connect("user.db")
	cur = con.cursor()
	password = cur.execute("""
	select user_password from user 
	where user_username = "user_name" or user_email = "user_name"
	"""
	)
	if str(user_password) == str(password):
		redirect("/main")
	else:
		redirect("/")

#找回密码	
@route('/retrievepassword')
def retrievepassword():
	return template('retrievepassword')
		
		
@route('/getemail')
def getemail():
	user_email = request.GET.email
	msg = request.GET.msg
	sender = 'longlong20140320@126.com'
	receiver = 'msg'
	subject = 'python email test'
	smtpserver = 'smtp.126.com'
	username = 'longlong20140320'
	password = 'longlong'

	msgstring = "请输入后边的随机码："
	for i in range(0,10):
		msgstring = msgstring + str(random.randint(10,99))

	msg = MIMEText(msgstring,'html','utf-8')  
	msg['Subject'] = Header(subject, 'utf-8') 

	smtp = smtplib.SMTP()
	smtp.connect(smtpserver)
	smtp.login(username, password)
	smtp.sendmail(sender, receiver, msg.as_string())
	smtp.quit()


#注册	
@route('/registration')
def registration():
	return template('registration')
	
	
@route("/user")
def user():
	con = sqlite3.connect("user.db")
	cur = con.cursor()
	cur.execute( """create table if not exists user(
	user_userid integer primary key,
	user_username text unique,
	user_nickname text,
	user_email text,
	user_password text
	)"""
	)
	con = sqlite3.connect("userid_msg.db")
	cur.execute( """create table if not exists userid_msg(
	user_userid integer primary key,
	user_username text,
	user_msg text,
	foreign key(user_userid) references user(user_userid)
	)"""
	)
	con.commit()
	redirect('/registration')
def project():
	con = sqlite3.connect("project.db")
	cur = con.cursor()
	cur.execute( """create table if not exists project(
	project_id integer primary key,
	project_name text unique,
	project_dscrb text,
	user_userid integer,
	project_nature integer,
	foreign key(user_userid) references user(user_userid)
	)"""
	)
	
	
def insertdb(userobj):
	con = sqlite3.connect("user.db")
	cur = con.cursor()
	sql = """
insert into user(user_username, user_email, user_password) values('"""+str(userobj.user_username)+"""',
'"""+str(userobj.user_email)+"""','"""+str(userobj.user_password)+"""')
	"""
	cur.execute(sql)
	con.commit()
	

@route("/getdata")
def getdata():
	user_username = request.GET.user_username
	user_email = request.GET.user_email
	user_password = request.GET.user_password
	user = User(user_username, user_email, user_password)
	insertdb(user)
	redirect("/")
	



#主页面	
@route('/main')
def main():
	return template('main')

	
@route('/userinfo')
def userinfo():
	return template('userinfo')
	
	
@route('/modifypassword')
def modifypassword():
	return template('modifypassword')

	

	
	

#用户信息表		
@route("/userdb")
def userdb():
	results = selectdb()
	return template("user", userlist = results)

		
def selectdb():
	con = sqlite3.connect("user.db")
	cur = con.cursor()
	sql = """
	select * from user
	"""
	cur.execute(sql)
	results = cur.fetchall()
	return results
	
		

	
	
debug(True)  
run (host='localhost', port=8080, reloader=True)
