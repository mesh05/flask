from flask import Flask, render_template, request


app = Flask(__name__)


USERS = {"prathamesh": "pratham","SSSM": "SSSM","Shoaib":"Chutiya"}


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/welcome", methods=["GET", "POST"])
def welcome():
    if request.method == 'POST':
        username = request.form.get("user")
        password = request.form.get("pass")
    if (USERS[username] == password):
        if (username=="Shoaib"):
            return ("hello,Chutiya")
        return ("hello" +username)
    else:
        return "Failed login"


@app.route("/Login", methods=["GET", "POST"])
def login():

    return render_template("Login.html")


@app.route("/contact", methods=["GET", "POST"])
def contact():
    return render_template("contact.html")


if __name__ == '__main__':
    app.run(debug=True)


'''@app.route("/greet", methods=["POST"])
def greet():
    name = request.form.get("name", "world")
    if name == "shoaib":
        return render_template("greet.html", name="chutiye")
    else:
        return render_template("greet.html", name=name)'''
