from flask import *

app = Flask(__name__)


@app.route('/')
def display():
    return render_template("main.html")

if __name__ == "__main__":
    app.run(port=8000, debug=False)
