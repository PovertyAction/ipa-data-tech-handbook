---
title: "Computer Setup"
execute:
    eval: false
---

> [!TIP]
> Refer to the IPA Global Help Desk for general guidance on IPA software and account
access.

This page is meant to help guide you in setting up your laptop with common software
used by data and technology teams at IPA. Most software covered in this page have
their own page in this handbook. We encourage you to refer to for usage of each
software. And please contribute to those pages so that others at IPA (including
your future self) are able to learn about what works well for interacting with
data at IPA.

## Package Manager

A package manager helps to standardize how you install and update software on
your computer. Generally, you want to use a package manager to install any programs
that are used globally on your computer. By "globally", we mean that it is a program
that is used across many projects and computing environments.

### Windows

If using a Windows computer with Windows 10 or later, we encourage you to use the
Windows Package Manager, [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/). However, if you do not have Windows 10+, you can achieve a similar package management experience with either
[chocolatey](https://chocolatey.org/) or [scoop](https://scoop.sh/).

<details>
<summary>Checking to see if you have winget</summary>

  1. Open Windows Powershell (See [PowerShell 101](https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/01-getting-started) if new to Windows PowerShell)
  1. Check to see if you have `winget` installed:
![Winget Version](images/software/winget-version.png)
  1. If you do not see a version number for `winget`. Follow the Microsoft instructions
  to [Install winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget)

</details>

```bash
# Install a single program (e.g. GitHub for command line)
winget install GitHub.cli

# Install multiple programs (Just, Rye for Python)
winget install Casey.Just Rye.Rye

# Some additional programs that may be helpful to install globally

# Visual Studio code
winget install Microsoft.VisualStudioCode

# Windows Terminal
winget install Microsoft.WindowsTerminal

# Microsoft PowerToys
winget install Microsoft.PowerToys

# GitHub CLI for interacting with GitHub from the command line
winget install GitHub.GithubDesktop

# Install Quarto
winget install Posit.Quarto

```

### MacOS/Linux

On MacOS, it is recommended that you use [Homebrew](https://brew.sh/) as
a package manager. On Linux you can use Homebrew or [Snap](https://snapcraft.io/).
This may be relevant if you are working in the [Windows Subsystem Linux](https://learn.microsoft.com/en-us/windows/wsl/) (WSL).

The following command line examples can be use to install the majority of the
software covered in this Handbook. Note that there are some exceptions to software
available via a package manager. For example, Stata needs to be installed via
the [installation packages](https://ipastorage.app.box.com/folder/129276324764?v=install-stata) provided by IPA on Box.

<details>
<summary>Package management on Linux</summary>

```bash
# Install a single program (e.g. GitHub for command line)
brew install gh

# Install multiple programs (Just, Rye for Python)
brew install just rye

# Some additional programs that may be helpful to install globally

# Visual Studio Code
# See installation instructions here: https://code.visualstudio.com/docs/setup/linux
sudo snap install code --classic

# Install Quarto
# download and install from https://quarto.org/docs/get-started/
# for example for verison v1.4.554, run:
curl -sfL https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.554/quarto-v1.4.554-linux-amd64.deb  | sudo apt install ./quarto-v1.4.554-linux-amd64.deb
```

</details>

<details>
<summary>Package management on MacOS</summary>

```bash
# Install a single program (e.g. GitHub for command line)
brew install gh

# Install multiple programs (Just, Rye for Python)
brew install just rye

# Some additional programs that may be helpful to install globally

# Visual Studio Code
brew install --cask visual-studio-code

# GitHub GithubDesktop
brew install  --cask github

# Install Quarto
brew install --cask quarto
```

</details>

## Terminal

In Windows, we recommend using the [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/).
However, there are several other options for terminals. Select what you feel most
comfortable with. The same is true for MacOS and Linux where there are many Terminal
options to select from.

## Shell

You are free to choose whichever shell works best for your workflow and style.
Here are the common shell options for Windows users:

### bash

Git Bash is included with the [Git for Windows](https://gitforwindows.org/) installation. Bash comes pre-installed with MacOS and Linux, but run the following if it is not available:

```bash
# Install git for Windows
winget install Git.Git

# MacOS/Linux, if not avialable
brew install bash
```
