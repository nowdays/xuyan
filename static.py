from bottle import static_file, route

@route("/static/css/:filename")
def getstaticfile(filename):
    path = "./static/css/"+filename
    return static_file(path, root=".")
    
@route("/static/image/:filename")
def getstaticfile(filename):
    path = "./static/image/"+filename
    return static_file(path, root=".")