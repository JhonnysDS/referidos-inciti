from flask import Flask, render_template, request, redirect, url_for
from forms import SignupForm
app = Flask(__name__)
app.config['SECRET_KEY'] = '7110c8ae51a4b5af97be6534caef90e4bb9bdcb3380af008f90b23a5d1616bf319bc298105da20fe'


posts = []


@app.route("/", methods=["GET", "POST"])
def index():
    return render_template("index.html", num_posts=len(posts))


@app.route("/signup", methods=["GET", "POST"])
def signup():
    form = SignupForm()

    if form.validate_on_submit():
        username = form.username.data
        password = form.password.data
        email = form.email.data

        next = request.args.get('next', None)
        if next:
            return redirect(next)
        return redirect(url_for('home'))
    return render_template("signup.html", form=form)


@app.route("/home/")
def view_refers():
    return render_template("home.html")


@app.route("/home/terminosycondiciones/")
def view_term():
    return render_template("term-conditions.html")
