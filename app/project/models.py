from flask_login import UserMixin

from app import db
from datetime import datetime


class Projects(db.Model):
    __tablename__ = 'projects'
    id = db.Column(db.Integer(), primary_key=True)
    name_project = db.Column(db.String(11), nullable=False)
    #image = db.Column(db.Text(), nullable=True)
    description = db.Column(db.Text(), nullable=False)
    terms_conditions = db.Column(db.Text(), nullable=False)
    creation_date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)

    def __repr__(self):
        return f'<Projects {self.id}>'

    def save(self):
        if not self.id:
            db.session.add(self)
        db.session.commit()

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    @staticmethod
    def get_by_Projectid(projectId):
        return Projects.query.filter_by(project_id=projectId).all()

    @staticmethod
    def get_all():
        return Projects.query.all()

    @staticmethod
    def order_by(column):
        return Projects.query.order_by(column).all()

    @staticmethod
    def get_by_id(id):
        return Projects.query.get(id)

    @staticmethod
    def get_by_name_project(name_project):
        return Projects.query.filter_by(name_project=name_project).first()
