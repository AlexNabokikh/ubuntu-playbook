# Ubuntu Ansible Playbook

![Logo](files/logo.png)

![badge-gh-tests]
![badge-gh-release]
![badge-license]

This playbook helps to configure Ubuntu machine(s) for daily usage or software development quickly.

## Contents

- [Playbook capabilities](#playbook-capabilities)
- [Installation](#installation)
- [Running a specific set of tagged tasks](#running-a-specific-set-of-tagged-tasks)
- [Overriding Defaults](#overriding-defaults)

## Playbook capabilities

> **NOTE:** The Playbook is fully configurable. You can skip or reconfigure any task by [Overriding Defaults](#overriding-defaults).

- **Software**
  - Install **APT, Snap, Flatpak or Homebrew** packages.
  - Install extra **PIP** or **NPM** packages.
- **Dotfiles**
  - Clone a set of **dotfiles** from a given Git repo and link them to the users' home directory. ([Role](https://github.com/geerlingguy/ansible-role-dotfiles))
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
    - Install custom **OMZ** plugins and themes.
  - **TMUX**
    - Install and configure **TMUX** and **TPM** (Plugin manager)
  - **GNOME**
    - Customizes the GNOME desktop ([Role](https://github.com/PeterMosmans/ansible-role-customize-gnome/))
  - **User Script**
    - Execute arbitrary user script.

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

You can override any of the defaults configured in `example.config.yml` by creating a `config.yml` file and setting the overrides in that file.

## Author

This project was created by [Alexander Nabokikh](https://www.linkedin.com/in/nabokih/) (originally inspired by [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)).

## License

This software is available under the following licenses:

- **[Apache 2.0](https://github.com/AlexNabokikh/mac-playbook/blob/master/LICENSE)**

[badge-gh-tests]: https://github.com/AlexNabokikh/ubuntu-playbook/actions/workflows/test.yml/badge.svg
[badge-gh-release]: https://github.com/AlexNabokikh/ubuntu-playbook/actions/workflows/release.yaml/badge.svg
[badge-license]: https://img.shields.io/badge/License-Apache%202.0-informational
