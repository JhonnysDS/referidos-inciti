from datetime import datetime
from flask_login import UserMixin
from app import db


class UserReferred(db.Model, UserMixin):

    __tablename__ = 'app_user_referred'

    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('app_user.id', ondelete='CASCADE'), nullable=False)
    creation_date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    all_names = db.Column(db.String(255), unique=True, nullable=False)
    email = db.Column(db.String(255), nullable=False)
    cellphone = db.Column(db.Integer,  nullable=False)
    signature = db.Column(db.SmallInteger(2), default=1, nullable=False)
    apartment_type = db.Column(db.SmallInteger(2), default=1, nullable=False)
    term_cond = db.Column(db.Boolean, default=1, nullable=False)

    def __repr__(self):
        return f'<UserReferred {self.email}>'

    def save(self):
        if not self.id:
            db.session.add(self)
        db.session.commit()

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    @staticmethod
    def get_by_userid(userId):
        return UserReferred.query.filter_by(user_id=userId).all()

    @staticmethod
    def get_all():
        return UserReferred.query.all()

    @staticmethod
    def order_by(column):
        return UserReferred.query.order_by(column).all()

    @staticmethod
    def get_by_id(id):
        return UserReferred.query.get(id)

    @staticmethod
    def get_by_email(email):
        return UserReferred.query.filter_by(email=email).first()
