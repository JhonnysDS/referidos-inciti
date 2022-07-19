# config/testing.py

from .default import *

# Parámetros para activar el modo debug
TESTING = True
DEBUG = True

APP_ENV = APP_ENV_TESTING

SQLALCHEMY_DATABASE_URI = 'mysql://b9734c8de48310:61c5f84f@us-cdbr-east-06.cleardb.net/heroku_4dc8ce8c6973758?reconnect=true'