from bottle import route, template, run, debug
 
@route('/modifypassword')
def d():

	return template('modifypassword')


debug(True)  
run (host='localhost', port=8080)
