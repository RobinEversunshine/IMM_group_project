from flask import Flask, render_template, request, session, redirect
from dotenv import load_dotenv
import mysql.connector
import os


app = Flask(__name__)

# app.secret_key = os.getenv('SECRET_KEY')

# # Set the configuration from environment variables
# app.config['MYSQL_HOST'] = os.getenv('MYSQL_HOST')
# app.config['MYSQL_USER'] = os.getenv('MYSQL_USER')
# app.config['MYSQL_PASSWORD'] = os.getenv('MYSQL_PASSWORD')
# app.config['MYSQL_DB'] = os.getenv('MYSQL_DB')

# conn = mysql.connector.connect(
# host=app.config['MYSQL_HOST'],
# user=app.config['MYSQL_USER'],
# password=app.config['MYSQL_PASSWORD'],
# database=app.config['MYSQL_DB']
# )

# cursor = conn.cursor(dictionary=True)




# main page
@app.route("/")
def index():

    # cursor.execute('''SELECT * FROM `articles`''')
    # rows = cursor.fetchall()

    # cursor.execute('''SELECT * FROM `articles` WHERE `isfeature` = 1''')
    # features = cursor.fetchall()

    # username = 'null'
    # role = 'null'
    # if "username" in session:
    #     username = session['username']
    #     role = session['role']


    # data = {
    #     "rows": rows,
    #     "features": features,
    #     "username": username,
    #     "role": role,
    # }

    return render_template("index.html")











