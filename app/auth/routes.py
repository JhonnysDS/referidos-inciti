from datetime import datetime

from werkzeug.exceptions import abort
from flask import render_template, redirect, url_for, request, session
from flask_login import current_user, login_user, logout_user, login_required
from werkzeug.urls import url_parse
from app import login_manager
from . import auth_bp
from .decorators import admin_required
from .forms import SignupForm, LoginForm
from .models import User
from ..project.models import Projects
from ..public.forms import EditReferredForm
from ..public.models import UserReferred


@auth_bp.route("/signup/", methods=["GET", "POST"])
def signup():
    if current_user.is_authenticated:
        return redirect(url_for('public.view_user_index'))
    form = SignupForm()
    error = ""
    if form.validate_on_submit():
        names = form.names.data
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
            user = User(username=username, email=email, names=names, is_admin=is_admin)
            user.set_password(password)
            user.save()
            # Dejamos al usuario logueado
            login_user(user, remember=True)
            next_page = request.args.get('next', None)
            if not next_page or url_parse(next_page).netloc != '':
                code = 'dt6qNPYT'
                if current_user.is_admin == code:
                    next_page = url_for('project.view_admin_index')
                else:
                    next_page = url_for('public.view_user_index')
            return redirect(next_page)
    return render_template("signup.html", error=error, form=form)


@auth_bp.route("/login", methods=["GET", "POST"])
def login():
    error = ""
    code = 'dt6qNPYT'

    if current_user.is_authenticated:
        if current_user.is_admin == code:
            next_page = url_for('project.view_admin_index')
        else:
            next_page = url_for('public.view_user_index')

        return redirect(next_page)

    form = LoginForm()
    if form.validate_on_submit():
        user = User.get_by_username(form.username.data)

        if user is not None and user.check_password(form.password.data):
            login_user(user, remember=form.remember_me.data)
            next_page = request.args.get('next')
            error = f'Por favor digite correctamente los datos.'
            if not next_page or url_parse(next_page).netloc != '':
                session.permanent = True
                if current_user.is_admin == code:
                    next_page = url_for('project.view_admin_index')
                else:
                    next_page = url_for('public.view_user_index')
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


@auth_bp.route("/project/list/referreds/<int:id>", methods=['GET', 'POST'])
@login_required
@admin_required
def view_admin(id):
    iduser = current_user.id
    profiles = User.get_by_id(iduser)
    users_referreds = UserReferred.get_by_userid(iduser)
    project_created = Projects.get_by_id(id)

    users_referred = User.query. \
        join(UserReferred, User.id == UserReferred.user_id). \
        add_columns(UserReferred.id, User.names, UserReferred.all_names, UserReferred.email, UserReferred.cellphone,
                    UserReferred.signature, UserReferred.apartment_type). \
        filter(User.id == UserReferred.user_id).paginate(1, 10000, False)

    return render_template("view-list-general.html",id_lists=id,profiles=profiles
                           ,users_referreds=users_referreds ,users_referred=users_referred.items
                           ,project_created=project_created)


@auth_bp.route("/admin/edit/<int:id>", methods=['GET', 'POST'])
@login_required
@admin_required
def edit_referred(id):
    message_error = ""
    error = ""

    profiles = UserReferred.get_by_id(id)
    if profiles is None:
        abort(404)

    form = EditReferredForm(obj=profiles)

    if form.validate_on_submit():
        profiles.all_names = form.all_names.data,
        profiles.cellphone = form.cellphone.data,
        profiles.email = form.email.data,
        profiles.signature = form.signature.data,
        profiles.apartment_type = form.apartment_type.data
        profiles.save()
        return redirect(url_for('project.view_admin_index'))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al editar, por favor revise los campos obligatorios"
    elif formerrors != "":
        message_error = error

    return render_template("edit-referred.html",message_error=message_error, formerrors=formerrors, profiles=profiles,
                           form=form)


@auth_bp.route("/project/list/referreds/delete/<int:id>")
@admin_required
def delete_referred(id):

    profilesreferred = UserReferred.get_by_id(id)
    project_created = Projects.get_by_id(id)

    if profilesreferred is None:
        abort(404)
    profilesreferred.delete()
    return redirect(url_for('project.view_admin_index'))


@auth_bp.route("/prueba/")
def descargar_informe():
    users = UserReferred.get_all()
    contador_tipos_1= 0
    contador_tipo_2= 0
    contador_tipo_3=0
    for usuario in users:
        nombres = usuario.all_names
        email = usuario.email
        cellphone = usuario.cellphone
        signature = usuario.signature
        type_apartment = usuario.apartment_type
        if type_apartment == 2 or type_apartment == 3 or type_apartment == 4:
            contador_tipos_1 += 1
        elif type_apartment == 5:
            contador_tipo_2 += 1
        elif type_apartment == 6:
            contador_tipo_3 += 1
    pago_tipos_1 = (contador_tipos_1*2000000)
    pago_tipos_2 = (contador_tipo_2*1500000)
    pago_tipos_3 = (contador_tipo_3*1000000)

    total = (pago_tipos_1 + pago_tipos_2 + pago_tipos_3)

    tiempo= datetime
    return render_template('lista-prueba.html',tiempo=tiempo, users=users,contador_tipos_1=contador_tipos_1,
                           contador_tipo_2=contador_tipo_2,contador_tipo_3=contador_tipo_3,
                           pago_tipos_1=pago_tipos_1, pago_tipos_2=pago_tipos_2, pago_tipos_3=pago_tipos_3, total=total)
