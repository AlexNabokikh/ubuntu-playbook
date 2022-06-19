# Ubuntu WSL2 Ansible Playbook

![badge-gh-actions]
![badge-license]

This playbook helps to configure Ubuntu WSL2 machine for software development quickly.

## Contents

* [Playbook capabilities](#playbook-capabilities)
* [Installation](#installation)
* [Running a specific set of tagged tasks](#running-a-specific-set-of-tagged-tasks)
* [Overriding Defaults](#overriding-defaults)
* [Included Applications / Configuration (Default)](#included-applications--configuration-default)

## Playbook capabilities

> **NOTE:** The Playbook is fully configurable. You can skip or reconfigure any task by [Overriding Defaults](#overriding-defaults).

* **Software**
  * Ensure APT packages selected by the user are installed.
  * Ensure software and packages selected by the user are installed via [Homebrew](https://github.com/Homebrew/brew).
  * Ensure PIP (Python) selected packages selected by the user are installed.
* **Dotfiles**
  * Installs a set of dotfiles from a given Git repository.
* **System Settings**
  * **directories**
    * Ensures custom user directories created.
  * **gpg config**
    * Ensures users's gpg config copied to the home directory.
* **Terminal Settings**
  * **Sudoers**
    * Ensures custom user sudoers config applied.
  * **Vim**
    * Ensures [Vundle plugin manager](https://github.com/VundleVim/Vundle.vim) installed.
    * Ensures plugins from your .vimconfig are installed and updated.
  * **Oh-My-Zsh**
    * Ensures [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) installed and configured.

## Installation

1. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html):

    1. Upgrade Pip: `python -m pip install --upgrade pip`
    2. Install Ansible: `python -m pip install --user ansible`

2. Clone or download this repository to your local drive.
3. Run `ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible collections.
4. Run `ansible-playbook main.yml --ask-become-pass` inside this directory.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook` 's `--tags` flag. The tags available are `dotfiles` , `homebrew` , `sudoers` , `vundle` , `directories` and `apt` .

```sh
ansible-playbook main.yml -K --tags "dotfiles, apt"
```

## Overriding Defaults

You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and enable/disable specific tasks with something like:

```yaml
---
configure_gpg: false
configure_vundle: true

configure_zsh: true
username: "{{ lookup('env', 'USER') }}"

create_directories: true
directories:
  - $HOME/Documents

configure_sudoers: true
sudoers_custom_config: |
  # Allow users in sudo group to use sudo with no password.
  %sudo ALL=(ALL) NOPASSWD: ALL

configure_dotfiles: true
dotfiles_repo: https://github.com/REPLACEME/dotfiles
dotfiles_repo_accept_hostkey: true
dotfiles_repo_local_destination: ~/Documents/repositories/dotfiles
dotfiles_files:
  - .gitconfig
  - .p10k.zsh
  - .tmux.conf
  - .vimrc
  - .zshrc

apt_installed_packages:
  - build-essential
  - curl
  - file
  - git
  - htop
  - procps
  - tmux
  - vim
  - zsh

homebrew_installed: true
homebrew_packages:
  - fzf
  - git-delta
  - kubernetes-cli
  - minikube
  - tfenv

pip_executable: pip
pip_packages:
  - name: awscli
    state: latest
```

## Included Applications / Configuration (Default)

Packages (installed with apt):

* build-essential
* curl
* file
* git
* htop
* procps
* tmux
* vim
* zsh

Packages (installed with Homebrew):

* fzf
* git-delta
* kubernetes-cli
* minikube
* tfenv

## Author

This project was created by [Alexander Nabokikh](https://www.linkedin.com/in/nabokih/) (originally inspired by [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)).

## License

This software is available under the following licenses:

* **[MIT](https://github.com/AlexNabokikh/mac-playbook/blob/master/LICENSE)**

[badge-gh-actions]: https://github.com/AlexNabokikh/wsl-playbook/actions/workflows/release.yaml/badge.svg
[badge-license]: https://img.shields.io/badge/License-MIT-informational
