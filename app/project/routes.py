from flask import render_template
from flask_login import login_required

from app.project.templates import  project_bp


@project_bp.route("/admin-index/")
@login_required
def view_admin_index():

    return render_template("admin-index.html")