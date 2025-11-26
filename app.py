from flask import Flask, render_template, request, session, redirect, jsonify
from dotenv import load_dotenv
import mysql.connector
import os


app = Flask(__name__)
app.secret_key = os.getenv('SECRET_KEY')

# Set the configuration from environment variables
app.config['MYSQL_HOST'] = os.getenv('MYSQL_HOST')
app.config['MYSQL_USER'] = os.getenv('MYSQL_USER')
app.config['MYSQL_PASSWORD'] = os.getenv('MYSQL_PASSWORD')
app.config['MYSQL_DB'] = os.getenv('MYSQL_DB')



def get_db():
    return mysql.connector.connect(
        host=app.config['MYSQL_HOST'],
        user=app.config['MYSQL_USER'],
        password=app.config['MYSQL_PASSWORD'],
        database=app.config['MYSQL_DB']
    )




# main page
@app.route("/")
def index():
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    cursor.execute('''SELECT * FROM `items`''')
    items = cursor.fetchall()

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
    data = {
        "items": items,
        # "features": features,
        # "username": username,
        # "role": role,
    }

    return render_template("index.html", **data)



# items page
@app.route("/items")
def items():
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    cursor.execute('''SELECT * FROM `items`''')
    items = cursor.fetchall()

    # cursor.execute('''SELECT * FROM `articles` WHERE `isfeature` = 1''')
    # features = cursor.fetchall()

    # username = 'null'
    # role = 'null'
    # if "username" in session:
    #     username = session['username']
    #     role = session['role']


    data = {
        "items": items,
        # "features": features,
        # "username": username,
        # "role": role,
    }



    return render_template("items.html", **data)



# item detail page
@app.route("/item/<itemid>")
def item(itemid):
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    cursor.execute('''SELECT * FROM `items` WHERE `sku` = %s''', (itemid, ))
    item = cursor.fetchone()


    cursor.execute('''SELECT * FROM `items`''')
    items = cursor.fetchall()

    data = {
        "items": items,
        "item": item,
    }

    return render_template("item.html", **data)