from flask import render_template

from app.admin import admin_bp


@admin_bp.route("/admin")
def view_admin():
    return render_template("admin-view.html")