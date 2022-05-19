from bottle import route, run, debug, template
import sqlite3



@route('/todo')
def todo_list():
    conn = sqlite3.connect('todo.db')
    c = conn.cursor()
    c.execute("SELECT id, task FROM todo WHERE status LIKE '1'")
    result = c.fetchall()
    return str(result)

run()


run(host='0.0.0.0', port=8080, reloader=True, debug=True)
