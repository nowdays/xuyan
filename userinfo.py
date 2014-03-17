from bottle import route, template, run, debug
 
@route('/userinfo')
def b():

	return template('userinfo')


debug(True)  
run (host='localhost', port=8080)
