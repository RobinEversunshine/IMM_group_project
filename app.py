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


def get_user():
    user = 'null'
    if "user" in session:
        user = session["user"]
    return user



# main page
@app.route("/")
def index():
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    cursor.execute('''SELECT * FROM `items`''')
    items = cursor.fetchall()



    data = {
        "items": items,
        "user": get_user(),
    }

    return render_template("index.html", **data)



# items page
@app.route("/items")
def items():
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    cursor.execute('''SELECT * FROM `items`''')
    items = cursor.fetchall()



    data = {
        "items": items,
        "user": get_user(),
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
        "user": get_user(),
    }

    return render_template("item.html", **data)






# log in page
@app.route("/login")
def login():
    return render_template("login.html", user = get_user())


# logged in page
@app.route("/process-login", methods = ["POST"])
def process_login():

    data = request.get_json()

    username = data.get('username')
    password = data.get('password')


    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    cursor.execute('''
    SELECT * 
    FROM `users` 
    WHERE `username` = %s 
    AND `password` = %s
    ''', (username, password))

    record = cursor.fetchone()

    if(record):
        session["user"] = record
        return jsonify({"success": True})
    else:
        return jsonify({"success": False, "msg": "User name or password incorrect"})



# logged out page
@app.route("/logout")
def process_logout():
    session.clear()
    return redirect("/")





# register page
@app.route("/register")
def register():
    return render_template("register.html", user = get_user())


# registered page
@app.route("/process-register", methods = ["POST"])
def process_register():

    data = request.get_json()

    username = data.get('username')
    password = data.get('password')


    conn = get_db()
    cursor = conn.cursor(dictionary=True)


    # avoid same name
    cursor.execute('''SELECT * FROM `users` WHERE `username` = %s''', (username, ))

    if not cursor.fetchone():
        # add to table
        cursor.execute('''
        INSERT INTO `users` (userid, username, password)
        VALUES (%s, %s, %s)
        ''', ('NULL',username, password))

        conn.commit()

        # log in after register
        cursor.execute('''SELECT * FROM `users` WHERE `username` = %s''', (username, ))
        record = cursor.fetchone()
        session["user"] = record

        cursor.close()
        conn.close()

        return jsonify({"success": True})
    else:
        return jsonify({"success": False, "msg": "There is already the same name"})




# saved page
@app.route("/saved")
def saved():
    return render_template("saved.html", user = get_user())