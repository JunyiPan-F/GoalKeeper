from flask import Flask
from app import authentication, machine_learning, action_items

app = Flask(__name__)

# Authentication routes
app.register_blueprint(authentication.bp)

# Machine learning routes
app.register_blueprint(machine_learning.bp)

# Action items routes
app.register_blueprint(action_items.bp)

if __name__ == "__main__":
    app.run(debug=True)
