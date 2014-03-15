from bottle import route, template, run, debug
 
@route('/')
def d():

	return template('modifypassword',encoding="utf8")


debug(True)  
run (host='localhost', port=8080)