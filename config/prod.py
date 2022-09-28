# config/prod.py

from .default import *

SECRET_KEY = '5e04a4955d8878191923e86fe6a0dfb24edb226c87d6c7787f35ba4698afc86e95cae409aebd47f7'

APP_ENV = APP_ENV_PRODUCTION
#URI DE HEROKU ↓
#SQLALCHEMY_DATABASE_URI = 'mysql://b9734c8de48310:61c5f84f@us-cdbr-east-06.cleardb.net/heroku_4dc8ce8c6973758'

SQLALCHEMY_DATABASE_URI = 'mysql://admin:referidos-inciti-v1@database-1.cs7ofbid7db4.us-east-1.rds.amazonaws.com/referidos_inciti'
