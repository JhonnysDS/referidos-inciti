from flask import Flask, render_template
from flask_login import LoginManager, current_user
from flask_sqlalchemy import SQLAlchemy

from config import prod

login_manager = LoginManager()
db = SQLAlchemy()


def create_app():
    settings_module = prod
    app = Flask(__name__, instance_relative_config=True)

    # Carga los parámetros de configuración según el entorno
    app.config.from_object(settings_module)

    # Carga la configuración del directorio instance
    #if app.config.get('TESTING', False):
        #app.config.from_pyfile('config-testing.py', silent=True)
    #else:
        #app.config.from_pyfile('config.py', silent=True)

    login_manager.init_app(app)
    login_manager.login_view = "auth.login"

    db.init_app(app)

    with app.app_context():
        db.create_all()

    app.app_context().push()

    # Registro de los Blueprints

    from .auth import auth_bp
    app.register_blueprint(auth_bp)

    from .admin import admin_bp
    app.register_blueprint(admin_bp)

    from .public import public_bp
    app.register_blueprint(public_bp)

    # Custom error handlers
    register_error_handlers(app)

    return app


def register_error_handlers(app):
    @app.errorhandler(500)
    def base_error_handler(e):
        return render_template('500.html'), 500

    @app.errorhandler(401)
    def error_401_handler(e):
        code = 'dt6qNPYT'
        if current_user.is_admin == code:
            return render_template('401.html'), 401
        else:
            return render_template('401-client.html'), 401

    @app.errorhandler(404)
    def error_404_handler(e):
        return render_template('404.html'), 404
