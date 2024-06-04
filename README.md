# IPA Data Science, Engineering, and Technology Handbook

Welcome to IPA's Handbook for Data Science, Engineering, and Technology!

> [!WARNING]
> This handbook is an early work in progress. Feedback, suggestions and contributions
> are appreciated! Please create an Issue or submit a pull request if there is anything
> you'd like to see changed or added.

## About the Handbook

This handbook is intended as a living document to assist IPA staff and collaborators
with common practices for writing code and working with data. The handbook will
never be comprehensive of every possible software, data object, or shared practice.
However, IPA staff working with data and technology are encouraged to use this
handbook as a reference and a shared project to give tips and advice for working
collaboratively with data analysis and software development.

## Get Started

This repository uses a Justfile for collecting common command line actions that
we run to set up the computing environment and build the assets of the handbook.
Note that you should also have Git installed

To get started, make sure you have Just installed on your computer
by running the following from the command line:

```bash
# On Windows (requires winget)
winget install Casey.Just

# On MacOS/Linux
brew install just
```

After installing Just and Nushell, run the following from the root folder of this repository:

```bash
just get-started

# Then run the following
# if using Windows Powershell:
.venv/Scripts/activate.ps1

# if using Nushell
overlay use .venv/Scripts/activate.nu

# if using Bash
source .venv/Scripts/activate
```

This will make sure that you have the latest version of Just, as well as [Rye](https://rye.astral.sh/guide/)
(installer for Python) and [Quarto](https://quarto.org/docs/guide/) (for writing and compiling scientific and technical documents). Additionally

- We use Just in order to make it easier for all IPA users to be productive with
  data and technology systems. The goal of using a Justfile is to help make the
  end goal of the user easier to achieve without needing to know or remember all
  of the technical details of how we get to that goal.
- We use Rye to help ease use of Python. Rye provides a global system for creating
  and building computing environments for Python.
- We use Quarto to allow users to focus on writing and data analytics. Writing in
  markdown, jupyter notebooks, python scripts, R scripts, etc. makes it easier to
  review, update, and deploy technical documentation.

## Preview the handbook

To build a version of the Handbook so that you can read it on your computer, run
the following from a Terminal. Make sure that you are working from the root folder
of this Git Repository:

```bash
just preview-docs
```

The command line above references the `_quarto.yml` file and creates the
`.html` files for the handbook then launches a browser window with a `localhost`
server of the handbook.
