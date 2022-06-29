from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email


class AddReferredForm(FlaskForm):
    all_names = StringField('Apellidos', validators=[DataRequired(), Length(max=64)])
    email = StringField('Correo', validators=[DataRequired(), Email()])
    cellphone = IntegerField('Celular', validators=[DataRequired()])
    term_cond = BooleanField(validators=[DataRequired()])
    submit = SubmitField('Enviar referido')


class EditReferredForm(FlaskForm):
    all_names = StringField('Apellidos', validators=[DataRequired(), Length(max=64)])
    email = StringField('Correo', validators=[DataRequired(), Email()])
    cellphone = IntegerField('Celular', validators=[DataRequired()])
    signature = SelectField(u'¿Firmó Carta?',
                            choices=[(0, 'No'), (1, 'Si')],
                            coerce=int, validators=[DataRequired()])
    apartment_type = SelectField(u'Tipo de apartamento',
                                 choices=[(0, 'Seleccione...'), (1, 'Tipo 1A'),
                                          (2, 'Tipo 1B'), (3, 'Tipo 1C'),
                                          (4, 'Tipo 2'), (5, 'Tipo 3')],
                                 coerce=int, validators=[DataRequired()])
    term_cond = BooleanField(validators=[DataRequired()])
    submit = SubmitField('Editar Referido')
