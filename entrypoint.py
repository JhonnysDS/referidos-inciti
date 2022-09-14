import os
from flask import send_from_directory

from app import create_app
app = create_app()


@app.route('app/static/imagenes/projects/<filename>')
def media_projects(filename):
    dir_path = os.path.join(
        app.config['MEDIA_DIR'],
        app.config['PROJECTS_IMAGES_DIR'])
    return send_from_directory(dir_path, filename)