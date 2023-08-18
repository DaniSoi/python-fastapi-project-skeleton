POETRY_VERSION ?= 1.5.1
POETRY_HOME ?= /etc/poetry
export PATH:=${PATH}:${POETRY_HOME}/bin

.PHONY: install hooks server dev format lint lint-fix test coverage

prepare:
	curl -sSL https://install.python-poetry.org | POETRY_VERSION=${POETRY_VERSION} POETRY_HOME=${POETRY_HOME} python3 -
	poetry --version

install:
	poetry install

hooks:
	poetry run pre-commit install

server:
	poetry run uvicorn python_fastapi_project_skeleton.main:app

dev:
	poetry run uvicorn python_fastapi_project_skeleton.main:app --reload

format:
	poetry run ruff --select I --fix --show-fixes --exit-non-zero-on-fix src/ tests/
	poetry run black src/ tests/

lint:
	poetry run black --check --diff src/ tests/
	poetry run ruff src/ tests/
	poetry run mypy src/ tests/

lint-fix:
	poetry run black src/ tests/
	poetry run ruff --fix src/ tests/

test:
	poetry run pytest

coverage:
	poetry run pytest --cov=src/ --cov-report=xml
