# python-fastapi-project-skeleton

## Install

Pre-requisites: 
* _python3.11_ (it is recommended to use <a href="https://github.com/pyenv/pyenv#homebrew-in-macos" target="_blank">_Pyenv_</a> to install and manage python versions)
* _Poetry_ (it is recommended to install _Poetry_ using the <a href="https://python-poetry.org/docs/#installation" target="_blank">official installer</a>)

Install project's dependencies:

`make install`

Install pre-commit hooks to automatically format and lint code before each commit:

`make hooks`

## Usage

Start the server:

`make server`

## Development

Start the server in development mode with auto-reload:

`make dev`

### Code formatting

Format code:

`make format`

* NOTE: pre-commit hook will run formatting automatically before each commit

### Linting

Lint code:

`make lint`

Lint code and fix issues:

`make lint-fix`

* NOTE: pre-commit hook will run linting automatically before each commit

### Testing

Run tests:

`make test`

Run tests and generate a coverage report:

`make coverage`
