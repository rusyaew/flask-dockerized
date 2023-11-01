from flask import Flask
from pymongo import MongoClient as mongo


app = Flask(__name__)

@app.route('/')
def hello():
    return '<h1>Hello world</h2> <body> Mongo version: {} </body>'.format(get_db_version())

if __name__ == "__main__":
    app.run(debug=True)

def get_db_version():
    return mongo('mongodb://db:27017').server_info()['version']

