from werkzeug.exceptions import abort

from flask import render_template, redirect, url_for, request
from flask_login import current_user, login_user, logout_user, login_required
from werkzeug.urls import url_parse
from app import login_manager
from . import auth_bp
from .forms import SignupForm, LoginForm
from .models import User
from ..admin import admin_bp
from ..public.forms import AddReferredForm, EditReferredForm
from ..public.models import UserReferred


@auth_bp.route("/signup", methods=["GET", "POST"])
def signup():
    if current_user.is_authenticated:
        return redirect(url_for('public.index'))
    form = SignupForm()
    error = None
    if form.validate_on_submit():
        names = form.names.data
        last_names = form.last_names.data
        username = form.username.data
        password = form.password.data
        email = form.email.data
        is_admin = form.is_admin.data
        # Comprobamos que no haya un usuario con el mismo nombre de usuario
        user = User.get_by_username(username)
        if user is not None:
            error = f'El nombre de usuario {username} ya existe.'
        else:
            # Creamos el usuario y lo guardamos
            user = User(username=username, email=email, names=names,last_names=last_names, is_admin=is_admin)
            user.set_password(password)
            user.save()
            # Dejamos al usuario logueado
            login_user(user, remember=True)
            next_page = request.args.get('next', None)
            if not next_page or url_parse(next_page).netloc != '':
                if current_user.is_admin == 'dt6qNPYT':
                    next_page = url_for('auth.view_admin')
                else:
                    next_page = url_for('public.index')
            return redirect(next_page)
    return render_template("signup.html",error=error, form=form)


@auth_bp.route("/login", methods=["GET", "POST"])
def login():
    error = None
    if current_user.is_authenticated:
        return redirect(url_for('public.index'))

    form = LoginForm()
    if form.validate_on_submit():
        user = User.get_by_username(form.username.data)
        if user is not None and user.check_password(form.password.data):
            login_user(user, remember=form.remember_me.data)
            next_page = request.args.get('next')
            message = f'Por favor digite correctamente los datos.'
            if not next_page or url_parse(next_page).netloc != '':
                if current_user.is_admin == 'dt6qNPYT' :
                    next_page = url_for('auth.view_admin')
                else:
                    next_page = url_for('public.index')

            return redirect(next_page)
    return render_template("login.html", error=error, form=form)


@login_manager.user_loader
def load_user(user_id):
    return User.get_by_id(int(user_id))


@auth_bp.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('auth.login'))


@auth_bp.route("/term-conditions/")
@login_required
def view_term():
    return render_template("term-conditions.html")


@auth_bp.route("/admin")
def view_admin():
    profiles = User.get_by_id(id)
    form = AddReferredForm()
    users_referred = UserReferred.get_all()
    return render_template("admin-view.html", profiles=profiles, form=form, users_referred=users_referred)


