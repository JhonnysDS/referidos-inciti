import os

from flask import render_template, url_for, current_app
from flask_login import login_required
from werkzeug.utils import redirect, secure_filename

from app.project import project_bp
from app.project.form import ProjectForm
from app.project.models import Projects


@project_bp.route("/adminzone")
@login_required
def view_admin_index():
    project_created = Projects.order_by(Projects.id.desc())
    return render_template('admin-index.html', project_created=project_created)


@project_bp.route("/create", methods=["GET", "POST"])
@login_required
def add_project():
    error = ""
    message_error = ""
    form = ProjectForm()
    if form.validate_on_submit():
        name_project=form.name_project.data,
        imagen = form.imagen.data,
        description=form.description.data,
        terms_conditions=form.terms_conditions.data,
        image_name = None
        if imagen:
            image_name = secure_filename(imagen.filename)
            images_dir = current_app.config['PROJECTS_IMAGES_DIR',]
            os.makedirs(images_dir, exist_ok=True)
            imagen_path = os.path.join(images_dir, image_name)
            imagen.save(imagen_path)
        project_created=Projects(name_project=name_project, description=description, terms_conditions=terms_conditions)
        project_created.image_name = image_name
        project_created.save()
        return redirect(url_for('project.view_admin_index'))

    formerrors = form.errors

    if formerrors != {}:
        message_error = "Error al agregar, revise los campos obligatorios."
    elif error != "":
        message_error = error
    return render_template("add-project.html", form=form, error=error, message_error=message_error)

