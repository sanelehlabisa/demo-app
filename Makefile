# Define variables
VENV_DIR = venv
PYTHON = $(VENV_DIR)/bin/python
PIP = $(VENV_DIR)/bin/pip
PYTEST = $(VENV_DIR)/bin/pytest
PYLINT = $(VENV_DIR)/bin/pylint

# Default target
.PHONY: all
all: install test lint

# Create a virtual environment
.PHONY: venv
venv:
	python3 -m virtualenv $(VENV_DIR)

# Install dependencies
.PHONY: install
install: venv
	$(PIP) install -r requirements.txt

# Run tests with pytest
.PHONY: test
test:
	$(PYTEST)

# Run pylint
.PHONY: lint
lint:
	$(PYLINT) app.py

# Clean up the virtual environment
.PHONY: clean
clean:
	rm -rf $(VENV_DIR)
