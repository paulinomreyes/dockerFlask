from app import app
from flask import Flask, jsonify, request, session, render_template, abort, session, url_for, escape, redirect
import os
import sys
import re
import socket

@app.route('/')
@app.route('/index')
def index():
  hostname = socket.gethostname()
  return render_template('index.html', hostName=hostname)

@app.route('/about')
def about():
  return render_template('about.html')
