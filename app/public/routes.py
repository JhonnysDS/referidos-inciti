from flask import abort, render_template, url_for
from flask_login import login_required, current_user
from werkzeug.utils import redirect

from . import public_bp
from .forms import AddReferredForm, EditReferredForm
from .models import UserReferred
from ..auth.models import User


@public_bp.route("/")
@login_required
def index():
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


@public_bp.route("/admin/edit/<int:id>", methods=['GET', 'POST'])
@login_required
def edit_referred(id):
    message_error = ""
    error = ""

    profilesreferred = UserReferred.get_by_id(id)
    if profilesreferred is None:
        abort(404)

    form = EditReferredForm(obj=profilesreferred)

    if form.validate_on_submit():
        profilesreferred.all_names = form.all_names.data,
        profilesreferred.cellphone = form.cellphone.data,
        profilesreferred.email = form.email.data,
        profilesreferred.signature = form.signature.data,
        profilesreferred.apartment_type = form.apartment_type.data
        profilesreferred.save()
        return redirect(url_for('auth.view_admin'))


    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al editar, por favor revise los campos obligatorios"
    elif formerrors != "":
        message_error = error

    return render_template("edit.html", message_error=message_error, formerrors=formerrors, profilesreferred=profilesreferred, form=form )


@public_bp.route("/admin/delete/<int:id>")
def delete_referrer(id):
    profilesreferred = UserReferred.get_by_id(id)
    if profilesreferred is None:
        abort(404)
    profilesreferred.delete()
    return redirect(url_for('public.view_admin'))
