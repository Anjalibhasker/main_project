import json

import os
from flask import jsonify
from flask import *
import MySQLdb
from werkzeug.utils import secure_filename

root=Flask(__name__)
root.secret_key='hai'
path="C:\\Users\\lenovo\\PycharmProjects\\My Privacy\\privacy\\static\\Photos"
con=MySQLdb.connect(host='localhost',user='root',password='root',port=3306,db='project_db')
cmd=con.cursor()

@root.route('/login',methods=['GET'])
def login():
    username=request.args.get('uname')
    password=request.args.get('pass')
    cmd.execute("select * from login_tb where User_name='" + username + "' and Password='" + password + "'")
    s=cmd.fetchone()
    if(s is None):
        return jsonify({'task':"invalid"})
    elif(s[3]=='user'):
        id = s[0]
        print("id", id)
        session['id'] = id
        return jsonify({'task': id})
    else:
        return jsonify({'task': "invalid"})

@root.route('/signup')
def signup():
    name=request.form['name']
    gender=request.form['gender']
    dob=request.form['dob']
    city=request.form['city']
    email=request.form['email']
    mobile=request.form['mobile']
    password=request.form['pass']
    photo=request.files['files']
    fname=secure_filename(photo.filename)
    photo.save(os.path.join(path,fname))
    cmd.execute("insert into reg_tb values(null,'"+name+"','"+gender+"','"+dob+"','"+city+"','"+email+"','"+mobile+"','"+password+"')")
    con.commit()
    return jsonify({'task':"success"})
# @root.route('/feedback')
# def feedback():









