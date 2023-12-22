from src import routes
from flask import Flask


app = Flask(__name__)

app.add_url_rule('/', view_func=routes.home)
app.add_url_rule('/<name>', view_func=routes.hello)
app.add_url_rule('/about', view_func=routes.about)