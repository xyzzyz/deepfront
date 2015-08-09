from flask import Flask
from flask import render_template
from flask import request

app = Flask(__name__)

@app.route('/')
def main():
    return render_template("upload.html")

if __name__ == '__main__':
    app.debug = True
    app.run()

