from flask import Flask
import json

app = Flask(__name__)

@app.route("/")
def hello():
    data = {
    "product1": {
        "name": "Washing machine",
        "species": "Germany"
    },
    "product2": {
        "name": "Kite",
        "species": "India"
    }
    } 
    return data

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
