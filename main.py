from email.mime import image
from flask import Flask
from slack_sdk import WebClient

app = Flask(__name__)


@app.route('/', methods=['GET'])
def get():
    return {"hello": "world!"}


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=8080)
