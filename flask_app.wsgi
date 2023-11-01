#! /usr/bin/python

import logging
import sys

logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/app/')
sys.path.insert(0, '/app/flask_app/')

from flask_app.app import app as application
logging.critical("Replace flask application secret key in flask_app.wsgi")
application.secret_key = 'REPLACE THIS TO PROPER VALUE'
