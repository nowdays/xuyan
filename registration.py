from bottle import route, template, run, debug
 
@route('/')
def a():

	return template('registration',encoding="utf8")


debug(True)  
run (host='localhost', port=8080)