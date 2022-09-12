from flask_wtf import FlaskForm
from wtforms import StringField, TextAreaField, SubmitField
from wtforms.validators import DataRequired, Length


class ProjectForm(FlaskForm):
    name_project = StringField('Nombre del proyecto', validators=[DataRequired(), Length(max=11)])
    #image =
    description = TextAreaField('Descripción del proyecto', validators=[DataRequired()])
    terms_conditions = TextAreaField('Terminos y condiciones del proyecto', validators=[DataRequired()])
    submit = SubmitField('Guardar proyecto')
