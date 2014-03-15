from bottle import route, template, run, debug
 
@route('/')
def b():

	return template('userinfo',encoding="utf8")


debug(True)  
run (host='localhost', port=8080)