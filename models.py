from flask_login import UserMixin
from werkzeug.security import generate_password_hash, check_password_hash


class User(UserMixin):
    def __init__(self, id, username, email, password, is_admin = False) :
        self.id = id
        self.username = username
        self.email = email
        self.password = generate_password_hash(password)
        self,is_admin = is_admin

    def set_password(self, passsword):
        self.password = generate_password_hash(passsword)

    def check_password(self, password):
        return check_password_hash(self.password, password)

    def __repr__(self):
        return '<User {}>'.format(self.email)

users = []

def get_user(username):
    for user in users:
        if user.username == username:
            return user
        return None