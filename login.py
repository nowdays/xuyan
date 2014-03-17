﻿from bottle import run, route, template, debug, request, redirect
import sqlite3
import static

class User:
	def __init__(self, user_username, user_email, user_password):
		self.user_username = user_username
		self.user_email = user_email
		self.user_password = user_password

 
#@route('/')
#def login():
	#return template('login')
	

@route('/')
def registration():
	return template('registration')
	
	
@route("/initdb")
def initdb():
		con = sqlite3.connect("user.db")
		cur = con.cursor()
		sql = """create table if not exists user(
		user_userid integer primary key,
		user_username text,
		user_email text,
		user_password text
		)"""
		cur.execute(sql)
		con.commit()
		redirect('/')
	
	
def insertdb(userobj):
	con = sqlite3.connect("user.db")
	cur = con.cursor()
	sql = """
	insert into user(user_username, user_email, user_password) values('"""
	+str(userobj.user_username)+"""','"""+str(userobj.user_email)+"""','"""
	+str(userobj.user_password)+"""')"""
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
	
	
def selectdb():
	con = sqlite3.connect("user.db")
	cur = con.cursor()
	sql = """
	select * from user
	"""
	cur.execute(sql)
	results = cur.fetchall()
	return results
	
		
@route("/showdb")
def showdb():
	results = selectdb()
	return template("show", userlist = results)
	
	
debug(True)  
run (host='localhost', port=8080, reloader=True)
