from flask import render_template, url_for
from flask_login import login_required
from werkzeug.utils import redirect

from app.project import project_bp
from app.project.form import ProjectForm
from app.project.models import Projects


@project_bp.route("/admin-index/")
@login_required
def view_admin_index():
    projects = Projects.order_by(Projects.id.desc())
    return render_template('admin-index.html', projects=projects)


@project_bp.route("/create", methods=["GET", "POST"])
@login_required
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

