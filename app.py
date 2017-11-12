#!flask/bin/python
import flask
from app import app
app.run(debug=True,host='0.0.0.0', port=8000,threaded=True)


