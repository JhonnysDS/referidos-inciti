from flask import abort, render_template, url_for
from flask_login import login_required, current_user
from werkzeug.utils import redirect

from . import public_bp
from .forms import AddReferredForm
from .models import UserReferred
from ..auth.models import User


@public_bp.route("/")
@login_required
def index():
    code = 'dt6qNPYT'
    if current_user.is_admin == code:
        profiles = User.get_by_id(id)
        form = AddReferredForm()
        users_referred = UserReferred.get_all()
    else:
        iduser = current_user.id
        profiles = User.get_by_id(iduser)
        form = AddReferredForm()
        users_referred = UserReferred.get_by_userid(iduser)
    return render_template("index.html", profiles=profiles, form=form, users_referred=users_referred)


@public_bp.route("/", methods=["GET", "POST"])
def add_referred():
    error = ""
    message_error = ""
    form = AddReferredForm()

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
            )

            user_referred.save()
            return redirect(url_for("public.index"))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al agregar, revise los campos obligatorios."
    elif error != "":
        message_error = error

    return render_template("index.html",error=error, message_error=message_error, form=form)