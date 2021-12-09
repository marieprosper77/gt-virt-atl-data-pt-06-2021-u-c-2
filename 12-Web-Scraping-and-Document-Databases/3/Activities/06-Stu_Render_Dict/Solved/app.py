# import necessary libraries
from flask import Flask, render_template

# create instance of Flask app
app = Flask(__name__)

# List of dictionaries
dogs = [{"name": "Ted", "type": "Lab"},
        {"name": "Kujo", "type": "Collie"},
        {"name": "Lasie", "type": "Terrier"},
        {"name": "Dinamite", "type": "Retriever"}]


# create route that renders index.html template
@app.route("/")
def index():

    return render_template("index.html", dogs=dogs)


if __name__ == "__main__":
    app.run(debug=True)
