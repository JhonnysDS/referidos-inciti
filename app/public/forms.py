from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, BooleanField
from wtforms.validators import DataRequired, Length, Email


class AddReferredForm(FlaskForm):
    all_names = StringField('Apellidos', validators=[DataRequired(), Length(max=64)])
    email = StringField('Correo', validators=[DataRequired(), Email()])
    cellphone = IntegerField('Celular', validators=[DataRequired()])
    term_cond = BooleanField(validators=[DataRequired()])
    submit = SubmitField('Enviar referido')