from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, PasswordField, BooleanField
from wtforms.validators import DataRequired, Email, Length


class SignupForm(FlaskForm):
    names = StringField('Nombres', validators=[DataRequired(), Length(max=64)])
    last_names = StringField('Apellidos', validators=[DataRequired(), Length(max=64)])
    username = StringField('Nombre de Usuario', validators=[DataRequired(), Length(max=64)])
    password = PasswordField('Contraseña', validators=[DataRequired()])
    email = StringField('Correo', validators=[DataRequired(), Email()])
    submit = SubmitField('Crear cuenta')

class LoginForm(FlaskForm):
    username = StringField('Nombre de usuario', validators=[DataRequired(), Length(max=64)])
    password = PasswordField('Contraseña', validators=[DataRequired()])
    remember_me = BooleanField('Recuerdame')
    submit = SubmitField('Iniciar sesion')



