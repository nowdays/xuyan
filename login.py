from bottle import route, template, run, debug
 
@route('/')
def c():

	return template('login',encoding="utf8")


debug(True)  
run (host='localhost', port=8080)