from flask import Flask, render_template, request, send_file
from flask_mysqldb import MySQL
import io
import pandas as pd
import xlsxwriter
from datetime import date

today = date.today()

app = Flask(__name__)


# MySQL configurations
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '22EC1U3Inisl#wiswAPe'
app.config['MYSQL_DB'] = 'emsdb'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'


mysql = MySQL(app)


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
            # age = staff[0]['age']
            # dept = staff[0]['dept_name']
            name = i['staff_name']
            # st_id = staff[0]['staff_id']
            # desg = staff[0]['designation']
            key = det[1].keys()
            for j in range(0, x):
                row = []
                for k in key:
                    row.append(det[j][k])
                value.append(row)
            return render_template("welcome.html", name=name)
            # return render_template("table.html", name=name, key=key, value=value, dept=dept, id=st_id, desg=desg, age=age)
    return "login failed!!"


@app.route("/login", methods=["GET", "POST"])
def login():

    return render_template("Login.html")


@app.route("/contact", methods=["GET", "POST"])
def contact():
    name = request.form.get("name")
    mail = request.form.get("mail")
    message = request.form.get("message")
    cur = mysql.connection.cursor()
    cur.callproc('insert_contact', [name, mail, message])
    cur.close()
    return render_template("contact.html", name=name, message=message, mail=mail)


@app.route("/details", methods=["GET", "POST"])
def details():
    day = request.form.get("day")
    start = int(request.form.get("start"))
    end = int(request.form.get("end"))
    hall = int(request.form.get("hall"))
    # file = request.files['file']
    # file.save(file.filename)
    # Parse the data as a Pandas DataFrame type
    # data = ((pd.read_excel(file))['Halls']).tolist()
    # print(data)
    if start < end:
        cur = mysql.connection.cursor()
        cur.callproc('final_list', [day])
        staff = cur.fetchall()
        print(staff)
        x = len(staff)
        cur.close()
        key = staff[1].keys()
        value = []
        for j in range(0, x):
            row = []
            for k in key:
                row.append(staff[j][k])
            value.append(row)
        print(value)
        count = 0
        final_list = [['staff_id', 'staff_name','designation', 'dept_name', 'age']]
        for i in value:
            flag = 0
            for j in range((4+start), ((4+end)+1)):
                print(i[j])
                if (i[j] != None):
                    flag = 1
                    break
            if(count >= hall):
                break
            if (flag == 0):
                final_list.append(i[0:5])
                count = count+1
        try:
            df = pd.DataFrame(final_list[1:], columns=final_list[0])
            print(df)
            output = io.BytesIO()
            writer = pd.ExcelWriter(output, engine='xlsxwriter')
            df.to_excel(writer, sheet_name='Sheet1')
            writer.save()
            output.seek(0)
            return send_file(output, mimetype='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', as_attachment=True, download_name='data.xlsx')
        except IndexError:
            return "NO INVIGILATORS FOUND!!!"


if __name__ == '__main__':
    app.run(debug=True)


'''@app.route("/greet", methods=["POST"])
def greet():
    name = request.form.get("name", "world")
    if name == "shoaib":
        return render_template("greet.html", name="chutiye")
    else:
        return render_template("greet.html", name=name)'''
