from flask import Blueprint, render_template

views = Blueprint('views', __name__)

@views.route('/')
def Home():
    return render_template('Home.html', pagename="Go 2 Grow")

@views.route('/contact')
def Contact():
    return render_template('Contact.html', pagename="Contact Go 2 Grow")

@views.route('/about')
def About():
    return render_template('About.html', pagename="About Go 2 Grow")