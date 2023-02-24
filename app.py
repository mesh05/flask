from flask import Flask, render_template, request
from flask_mysqldb import MySQL


app = Flask(__name__)


# MySQL configurations
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '22EC1U3Inisl#wiswAPe'
app.config['MYSQL_DB'] = 'emsdb'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'


mysql = MySQL(app)


USERS = {"prathamesh": "pratham", "Shoaib": "root"}


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/welcome", methods=["GET", "POST"])
def welcome():
    cur = mysql.connection.cursor()
    cur.execute('''call ac_det''')
    acc_det = cur.fetchall()
    cur.close()
    if request.method == 'POST':
        username = request.form.get("user")
        password = request.form.get("pass")

    cur = mysql.connection.cursor()
    cur.callproc('staff_timetable', [int(username)])
    det = cur.fetchall()
    cur.close()

    x = len(det)
    value = []
    for i in acc_det:
        if (i['staff_id'] == int(username) and i['staff_pass'] == password):
            cur = mysql.connection.cursor()
            cur.callproc('staff_details', [int(username)])
            staff = cur.fetchall()
            cur.close()
            age = staff[0]['age']
            dept = staff[0]['dept_name']
            name = i['staff_name']
            st_id = staff[0]['staff_id']
            desg = staff[0]['designation']
            key = det[1].keys()
            for j in range(0, x):
                row = []
                for k in key:
                    row.append(det[j][k])
                value.append(row)
            return render_template("welcome.html")
            # return render_template("table.html", name=name, key=key, value=value, dept=dept, id=st_id, desg=desg, age=age)
    return "login failed!!"


@app.route("/login", methods=["GET", "POST"])
def login():

    return render_template("Login.html")


@app.route("/contact", methods=["GET", "POST"])
def contact():
    return render_template("contact.html")


@app.route("/details", methods=["GET", "POST"])
def details():
    cur = mysql.connection.cursor()
    return 'done'


if __name__ == '__main__':
    app.run(debug=True)


'''@app.route("/greet", methods=["POST"])
def greet():
    name = request.form.get("name", "world")
    if name == "shoaib":
        return render_template("greet.html", name="chutiye")
    else:
        return render_template("greet.html", name=name)'''
