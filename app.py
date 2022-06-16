from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

posts = []


@app.route("/", methods=["GET", "POST"])
def index():
    return render_template("index.html", num_posts=len(posts))


@app.route("/signup", methods=["GET", "POST"])
def signup():
    if request.method == 'POST':
        username = request.form['username']
        password = request.formm['password']
        email = request.form['email']

        next = request.args.get('next', None)
        if next:
            return redirect(next)
        return redirect(url_for('home'))
    return render_template("signup.html")


@app.route("/home/")
def view_refers():
    return render_template("home.html")


@app.route("/home/terminosycondiciones/")
def view_term():
    return render_template("term-conditions.html")
