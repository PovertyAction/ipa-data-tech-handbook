# Set the shell to use
# set shell := ["nu", "-c"]
# Set shell for Windows

set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

# Set path to virtual environment's python

python_dir := ".venv/Scripts"
python := python_dir + if os_family() == "windows" { "/python.exe" } else { "/python3" }

# Display system information
system-info:
    @echo "CPU architecture: {{ arch() }}"
    @echo "Operating system type: {{ os_family() }}"
    @echo "Operating system: {{ os() }}"
    @echo "Home directory: {{ home_directory() }}"

# Clean venv
clean:
    pixi run RScript -e 'renv::clean()'
    rm -rf .pixi/envs

# Setup environment
get-started: pre-install venv

# Update project software versions in requirements
update-reqs:
    pixi update
    pre-commit autoupdate
    pixi run RScript -e 'renv::install()'

# create virtual environment
venv:
    pixi install
    pixi global install pre-commit
    pre-commit install
    pixi run RScript -e 'renv::restore()'

activate-venv:
    pixi shell

# launch jupyter lab
lab:
    pixi run jupyter lab

# Preview the handbook
preview-docs:
    quarto preview

# Build the handbook
build-docs:
    quarto render

build-docs-production:
    quarto render --profile production

# Lint python code
lint-py:
    pixi run ruff check

# Format python code
fmt-python:
    pixi run ruff format

# Format a single python file, "f"
fmt-py f:
    pixi run ruff format {{ f }}

# Lint sql scripts
lint-sql:
    pixi run sqlfluff fix --dialect duckdb

# Format all markdown and config files
fmt-markdown:
    pixi run mdformat .

# Format a single markdown file, "f"
fmt-md f:
    pixi run mdformat {{ f }}

# Check format of all markdown files
fmt-check-markdown:
    pixi run mdformat --check .

fmt-all: lint-py fmt-python lint-sql fmt-markdown

# Run pre-commit hooks
pre-commit-run:
    pre-commit run

[windows]
pre-install:
    winget install Casey.Just prefix-dev.pixi  GitHub.cli Posit.Quarto

[linux]
pre-install:
    brew install just pixi gh
    curl -sfL https://github.com/quarto-dev/quarto-cli/releases/download/v1.5.54/quarto-1.5.54-linux-amd64.deb  | sudo apt install ./quarto-1.5.54-linux-amd64.deb
    rm quarto-1.5.54-linux-amd64.deb

[macos]
pre-install:
    brew install just pixi gh
    brew install --cask quarto
