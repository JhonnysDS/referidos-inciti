import os
from fileinput import filename

from flask import render_template, url_for, current_app
from flask_login import login_required
from werkzeug.exceptions import abort
from werkzeug.utils import redirect, secure_filename

from app.auth.decorators import admin_required
from app.auth.forms import SignupForm
from app.auth.models import User
from app.project import project_bp
from app.project.form import ProjectForm, EditProjectForm
from app.project.models import Projects


@project_bp.route("/adminzone")
@login_required
@admin_required
def view_admin_index():
    project_created = Projects.order_by(Projects.id.desc())
    return render_template('admin-index.html', project_created=project_created)


"""@project_bp.route("/create", methods=["GET", "POST"])
@login_required
@admin_required
def add_project():

    error = ""
    message_error = ""
    form = ProjectForm()
    if form.validate_on_submit():
        name_project=form.name_project.data,
       # imagen = form.imagen.data,
        description=form.description.data,
        terms_conditions=form.terms_conditions.data,
        #image_name = None

        #if imagen:
        #    image_name = secure_filename(imagen.filename)
        #    images_dir = current_app.config['PROJECTS_IMAGES_DIR']
        #    os.makedirs(images_dir, exist_ok=True)
        #    imagen_path = os.path.join(images_dir, image_name)
        #    imagen.save(imagen_path)
        project_created=Projects(name_project=name_project, description=description, terms_conditions=terms_conditions)
        #project_created.image_name = image_name
        project_created.save()
        return redirect(url_for('project.view_admin_index'))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al agregar, revise los campos obligatorios."
    elif error != "":
        message_error = error
    return render_template("add-project.html", form=form, error=error, message_error=message_error)"""

@project_bp.route("/adminzone/project/create", methods=["GET", "POST"])
@login_required
@admin_required
def add_project():
    error = ""
    message_error = ""
    form = ProjectForm()
    if form.validate_on_submit():
        name_project = form.name_project.data
        # Comprobamos que no hay ya un proyecto con ese nombre
        project_created = Projects.get_by_name_project(name_project)

        if project_created is not None:
            error = f'El Nombre del projecto {name_project} ya está siendo utilizado.'
        else:
            # Creamos el usuario y lo guardamos
            project_created = Projects(
                name_project=name_project,
                description=form.description.data,
                terms_conditions=form.terms_conditions.data
            )

            project_created.save()
            return redirect(url_for('project.view_admin_index'))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al agregar, revise los campos obligatorios."
    elif error != "":
        message_error = error
    return render_template("add-project.html", form=form, error=error, message_error=message_error)



@project_bp.route("/adminzone/project/edit/<int:id>", methods=["GET", "POST"])
@login_required
@admin_required
def edit_project(id):
    message_error = ""
    error = ""

    projects = Projects.get_by_id(id)
    if projects is None:
        abort(404)

    form = EditProjectForm(obj=projects)

    if form.validate_on_submit():
        name_project = form.name_project.data
        project = Projects.get_by_name_project(name_project)

        if project is not None and project.id != id:
            error = f'El Nombre del projecto {name_project} ya está siendo utilizado.'
        else:
            projects.name_project = name_project,
            projects.description = form.description.data,
            projects.terms_conditions = form.terms_conditions.data,
            projects.save()
            return redirect(url_for('project.view_admin_index'))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al editar, por favor revise los campos obligatorios"
    elif formerrors != "":
        message_error = error

    return render_template("edit-project.html", message_error=message_error, formerrors=formerrors,projects=projects, form=form)


@project_bp.route("/adminzone/project/delete/<int:id>")
@login_required
@admin_required
def delete_project(id):
    projects = Projects.get_by_id(id)

    if projects is None:
        abort(404)
    projects.delete()
    return redirect(url_for('project.view_admin_index'))


@project_bp.route("/project/term-conditions/<int:id>", methods=["GET"] )
@login_required
def term_conditions_project(id):
    projects = Projects.get_by_id(id)
    return render_template("term-conditions-project.html", projects=projects)