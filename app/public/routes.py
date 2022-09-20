from flask import abort, render_template, url_for, current_app
from flask_login import login_required, current_user
from werkzeug.utils import redirect

from . import public_bp
from .forms import AddReferredForm
from .models import UserReferred
from ..auth.decorators import admin_forbidden
from ..auth.models import User
from ..project.models import Projects


@public_bp.route("/")
def indexNoHome():
    return redirect(url_for('auth.login'))

@public_bp.route("/userzone")
@login_required
def view_user_index():
    project_created = Projects.order_by(Projects.id.desc())
    return render_template('view-user.html', project_created=project_created)


@public_bp.route("/home")
@login_required

def index():
    iduser = current_user.id
    profiles = User.get_by_id(iduser)
    users_referreds = UserReferred.get_by_userid(iduser)
    project_created = Projects.get_by_id(id)
    form = AddReferredForm()
    return render_template("view-list-my-referreds.html", profiles=profiles, form=form, users_referreds=users_referreds,project_created=project_created)


@public_bp.route("/project/list/referreds/add/<int:id>", methods=["GET", "POST"])
@login_required
def add_referred(id):
    error = ""
    message_error = ""
    form = AddReferredForm()
    iduser = current_user.id
    profiles = User.get_by_id(iduser)
    project_created = Projects.get_by_id(id)

    if form.validate_on_submit():
        email = form.email.data

        # Comprobamos que no hay ya un usuario con ese email
        user_referred = UserReferred.get_by_email(email)

        if user_referred is not None:
            error = f'El email {email} ya está siendo utilizado por otro usuario referido'
        else:
            # Creamos el usuario y lo guardamos
            user_referred = UserReferred(
                user_id=current_user.id,
                all_names=form.all_names.data,
                cellphone=form.cellphone.data,
                email=email,
                project_created=project_created
            )

            user_referred.save()
            return redirect(url_for('project.view_admin_index'))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al agregar, revise los campos obligatorios."
    elif error != "":
        message_error = error

    return render_template("add-referred.html", profiles=profiles, form=form, error=error, message_error=message_error)