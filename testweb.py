from bottle import app, route, get, post, request, template, run, debug, static_file


@route('static/<filepath:path>')
def load_static(filepath):
    return static_file(filepath, root='H:/12CSC Project')

@route("/")
@route("/home")
def home_page():
    if request.GET.save:
        pass
    else:
        return template('HomePage.tpl')

debug(True)
run(reloader=True)
