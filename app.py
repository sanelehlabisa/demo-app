"""Module for a simple fask app that greets the user of the app."""
import os
from flask import Flask
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

app = Flask(__name__)

@app.route('/')
def hello():
    """A simple function to greet the user and print developer name."""
    return f"Hello, World!\nBy {os.getenv('DEVELOPER', 'None')}"

def add(a, b):
    """A simple function to add two numbers."""
    return a + b

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
