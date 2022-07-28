from functools import wraps
from flask_login import current_user
from werkzeug.exceptions import abort


def admin_required(f):
    @wraps(f)
    def decorated_function(*args, **kws):
        user_admin = getattr(current_user, 'is_admin', False)
        code = 'dt6qNPYT'
        if user_admin != code:
            abort(401)
        return f(*args, **kws)

    return decorated_function


def admin_forbidden(f):
    @wraps(f)
    def decorated_function(*args, **kws):
        user_admin = getattr(current_user, 'is_admin', False)
        code = 'dt6qNPYT'
        if user_admin == code:
            abort(401)
        return f(*args, **kws)

    return decorated_function
