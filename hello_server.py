from flask import Flask
app = Flask(__name__)


# @app.route("/test/", defaults={"path": "/test"})
@app.route("/test/<path:path>")
def test(path):
    return "This is a test, " + path


@app.route("/<path:path>")
def hello_world(path):
    return "Hello, " + path


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=1234)
