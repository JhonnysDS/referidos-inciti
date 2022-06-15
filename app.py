from flask import Flask, render_template
app = Flask(__name__)

posts=[]

@app.route("/")
def index():
    return render_template("index.html", num_posts=len(posts))


@app.route("/home/")
def view_refers():
    return render_template("home.html")


@app.route("/home/terminosycondiciones/")
def view_term():
   return render_template("term-conditions.html")
