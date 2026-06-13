from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def index():
    return f"""
    <h1>Production Lab Running</h1>
    <p>Hostname: {socket.gethostname()}</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
