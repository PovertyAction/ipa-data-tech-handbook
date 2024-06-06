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

# Setup environment
get-started: pre-install venv

# sync python virtual environment with requirements.lock
venv:
    rye sync
    rye run pre-commit install

# Preview the handbook
preview-docs:
    quarto preview

# Build the handbook
build-docs:
    quarto render

# Lint python code
lint-py:
    rye lint
# Format python code
fmt-py:
    rye fmt

# Lint sql scripts
lint-sql:
    rye run sqlfluff fix --dialect duckdb

# Format markdown and config files
fmt-markdown:
    rye run mdformat .

fmt-check-markdown:
    rye run mdformat --check .

fmt-all: lint-py fmt-py lint-sql fmt-markdown

[windows]
pre-install:
    winget install Casey.Just Rye.Rye Posit.Quarto

[linux]
pre-install:
    quarto_version :=  "1.4.554"
    brew install just rye
    curl -sfL https://github.com/quarto-dev/quarto-cli/releases/download/v{{quarto_version}}/quarto-{{quarto_version}}-linux-amd64.deb  | sudo apt install ./quarto-{{quarto_version}}-linux-amd64.deb
    rm quarto-{{quarto_version}}-linux-amd64.deb

[macos]
pre-install:
    brew install just rye
    brew install --cask quarto
