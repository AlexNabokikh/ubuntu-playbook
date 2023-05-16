# Ubuntu Ansible Playbook

![badge-gh-tests]
![badge-gh-release]
![badge-license]

This playbook helps to configure Ubuntu machines for software development quickly.

## Contents

- [Playbook capabilities](#playbook-capabilities)
- [Installation](#installation)
- [Running a specific set of tagged tasks](#running-a-specific-set-of-tagged-tasks)
- [Overriding Defaults](#overriding-defaults)

## Playbook capabilities

> **NOTE:** The Playbook is fully configurable. You can skip or reconfigure any task by [Overriding Defaults](#overriding-defaults).

- **Software**
  - Install **APT, Snap, Homebrew, PIP or NPM** packages selected by the user.
- **Dotfiles**
  - Clone a set of **dotfiles** from a given Git repo and link them to the users' home directory.
- **System Settings**
  - **hostname**
    - Create a user-defined hostname.
  - **directories**
    - Create custom user directories.
  - **sudoers**
    - Apply custom user sudoers config.
  - **fonts**
    - Download and install Nerd Fonts.
  - **ZSH**
    - Install and configure **ZSH** and **Oh-My-ZSH**
  - **TMUX**
    - Install and configure **TMUX** and **TPM** (Plugin manager)

## Installation

1. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html):

   1. Upgrade Pip: `python -m pip install --upgrade pip`
   2. Install Ansible: `python -m pip install --user ansible`

2. Clone or download this repository to your local drive.
3. Run `ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible collections.
4. Run `ansible-playbook main.yml --ask-become-pass` inside this directory.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag. The tags available are `apt`, `dotfiles`, `dirs`, `sudoers`, `fonts`, `homebrew`, `hostname` etc..

```sh
ansible-playbook main.yml -K --tags "dotfiles, apt"
```

## Overriding Defaults

You can override any of the defaults configured in `example.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and enable/disable specific tasks with something like:

```yaml
---
username: "{{ lookup('env', 'USER') }}"

create_directories: true
directories:
  - $HOME/Documents/repositories/

configure_sudoers: true
sudoers_custom_config: |
  # Allow users in sudo group to use sudo with no password.
  %sudo ALL=(ALL) NOPASSWD: ALL

configure_dotfiles: true
dotfiles_repo: https://github.com/AlexNabokikh/dotfiles
dotfiles_repo_accept_hostkey: true
dotfiles_repo_local_destination: ~/Documents/repositories/dotfiles
dotfiles_files:
  - .gitconfig
  - .p10k.zsh
  - .tmux.conf
  - .vimrc
  - .zshrc

install_fonts: true
installed_nerdfonts:
  - Meslo

apt_packages:
  - fzf

install_snap: true
snap_packages:
  - name: nvim
    classic: true

install_homebrew: true
homebrew_packages:
  - name: tfenv

pip_packages:
  - name: pip
    state: latest

npm_packages:
  - name: neovim
    state: latest

configure_zsh: true
zsh_plugins:
  - zsh-syntax-highlighting

configure_tmux: true
tmux_dir: $HOME/.tmux
```

## Author

This project was created by [Alexander Nabokikh](https://www.linkedin.com/in/nabokih/) (originally inspired by [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)).

## License

This software is available under the following licenses:

- **[Apache 2.0](https://github.com/AlexNabokikh/mac-playbook/blob/master/LICENSE)**

[badge-gh-tests]: https://github.com/AlexNabokikh/ubuntu-playbook/actions/workflows/ci.yml/badge.svg
[badge-gh-release]: https://github.com/AlexNabokikh/ubuntu-playbook/actions/workflows/release.yaml/badge.svg
[badge-license]: https://img.shields.io/badge/License-Apache%202.0-informational
