from flask_wtf import FlaskForm
from flask_wtf.file import FileAllowed
from wtforms import StringField, TextAreaField, SubmitField, FileField
from wtforms.validators import DataRequired, Length


class ProjectForm(FlaskForm):
    name_project = StringField('Nombre del proyecto', validators=[DataRequired(), Length(max=11)])
    #imagen = FileField('Imagen de cabecera', validators=[
    #    FileAllowed(['jpg', 'png'], 'Solo se permiten imágenes')
    #])
    description = TextAreaField('Descripción del proyecto', validators=[DataRequired()])
    terms_conditions = TextAreaField('Terminos y condiciones del proyecto', validators=[DataRequired()])
    submit = SubmitField('Guardar proyecto')

class EditProjectForm(FlaskForm):
    name_project = StringField('Nombre del proyecto', validators=[DataRequired(), Length(max=11)])
    #imagen = FileField('Imagen de cabecera', validators=[
    #    FileAllowed(['jpg', 'png'], 'Solo se permiten imágenes')
    #])
    description = TextAreaField('Descripción del proyecto', validators=[DataRequired()])
    terms_conditions = TextAreaField('Terminos y condiciones del proyecto', validators=[DataRequired()])
    submit = SubmitField('Guardar proyecto')