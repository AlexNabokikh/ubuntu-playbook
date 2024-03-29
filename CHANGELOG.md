# Changelog

All notable changes to this project will be documented in this file.

## [2.6.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.5.0...v2.6.0) (2023-12-14)


### Features

* **nix:** added nix packages installation task ([#24](https://github.com/AlexNabokikh/ubuntu-playbook/issues/24)) ([b0bdaf9](https://github.com/AlexNabokikh/ubuntu-playbook/commit/b0bdaf91f7ffe9742793b27874de2bf39522a17a))

## [2.5.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.4.0...v2.5.0) (2023-06-27)


### Features

* **extra_packages:** allow to pass extra arguments to pip ([cac07c9](https://github.com/AlexNabokikh/ubuntu-playbook/commit/cac07c9b134a8b05d4f2cc4f8bf97fd89781eed9))


### Bug Fixes

* **extra_packages:** remove become as packages should never be installed under su ([b755293](https://github.com/AlexNabokikh/ubuntu-playbook/commit/b75529371998873be15b1121910e62d883ec47e3))

## [2.4.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.3.3...v2.4.0) (2023-05-25)


### Features

* **apt:** added the ability to add ppa and deb repositories ([57d865a](https://github.com/AlexNabokikh/ubuntu-playbook/commit/57d865adb8fd61ee69a91661b4b5c619eefb2053))

## [2.3.3](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.3.2...v2.3.3) (2023-05-24)


### Bug Fixes

* **flatpak:** renamed the main repo to flathub ([0670b75](https://github.com/AlexNabokikh/ubuntu-playbook/commit/0670b7522236957da24fd4212e0d76368a43fc1b))

## [2.3.2](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.3.1...v2.3.2) (2023-05-21)


### Bug Fixes

* extra_packages installation ([fe73237](https://github.com/AlexNabokikh/ubuntu-playbook/commit/fe73237f8b6e0af645f48fea75db2605ec669f00))

## [2.3.1](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.3.0...v2.3.1) (2023-05-19)


### Bug Fixes

* **extra_packages:** renamed task to confirm naming convetion ([5980d2a](https://github.com/AlexNabokikh/ubuntu-playbook/commit/5980d2a48d001db47d090f4c5c07b7a50a80deb7))

## [2.3.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.2.0...v2.3.0) (2023-05-19)


### Features

* added the ability to run arbitrary scripts ([#17](https://github.com/AlexNabokikh/ubuntu-playbook/issues/17)) ([f04ca07](https://github.com/AlexNabokikh/ubuntu-playbook/commit/f04ca07310a84e677dd1230783aa0c79a4d1de30))

## [2.2.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.1.0...v2.2.0) (2023-05-18)


### Features

* **gnome:** added gnome customization role ([73d9b1e](https://github.com/AlexNabokikh/ubuntu-playbook/commit/73d9b1ead1a9ace1c95a8951318db19d6ffdd1d5))

## [2.1.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v2.0.0...v2.1.0) (2023-05-17)


### Features

* **flatpak:** added flatpak packages installation task ([8419402](https://github.com/AlexNabokikh/ubuntu-playbook/commit/8419402d2963856447d704dc1b643e062998bdf8))
* **snap:** set classic confinement as default ([df5a343](https://github.com/AlexNabokikh/ubuntu-playbook/commit/df5a3431c289873915fb70f0ec27967180b62eba))

## [2.0.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v1.2.0...v2.0.0) (2023-05-17)


### ⚠ BREAKING CHANGES

* **zsh:** Plugins format changed, check example.config.yml for details

### Features

* **zsh:** added omz custom themes installation task ([22d0dde](https://github.com/AlexNabokikh/ubuntu-playbook/commit/22d0dde82e1174ccfa103a011693647fd4dc9374))

## [1.2.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v1.1.1...v1.2.0) (2023-05-16)


### Features

* **tmux:** added tmux with tpm play ([3bdfdda](https://github.com/AlexNabokikh/ubuntu-playbook/commit/3bdfddaeb856c1a346ce697d6a7ca21677f04d6a))
* **zsh:** added zsh installation and configuration play ([5295857](https://github.com/AlexNabokikh/ubuntu-playbook/commit/529585715c6af34214092e1d85e396dce37ca1cf))


### Bug Fixes

* **snap:** removed redundant installation check ([7215f2d](https://github.com/AlexNabokikh/ubuntu-playbook/commit/7215f2dbb877100e68401a74e1445aa19fb9e8e0))
* **tmux:** added missed document start ([d4db87c](https://github.com/AlexNabokikh/ubuntu-playbook/commit/d4db87cb4010bd0087bb0ad233bcb563eab8f57f))

## [1.1.1](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v1.1.0...v1.1.1) (2023-05-15)


### Bug Fixes

* removed package installation overlaps ([77c3b75](https://github.com/AlexNabokikh/ubuntu-playbook/commit/77c3b756dc3d4a7f4bfe215d61fb06bc52479a85))

## [1.1.0](https://github.com/AlexNabokikh/ubuntu-playbook/compare/v1.0.0...v1.1.0) (2023-05-15)


### Features

* **snap:** install snap if needed ([f828c99](https://github.com/AlexNabokikh/ubuntu-playbook/commit/f828c99eae06b24b1fb7150d110d7d48849fd0a2))
* **tests:** added integration tests ([a211814](https://github.com/AlexNabokikh/ubuntu-playbook/commit/a211814a5882a24ede938b435020cfb3fb32261b))


### Bug Fixes

* **README:** fixed license badge ([1d1efed](https://github.com/AlexNabokikh/ubuntu-playbook/commit/1d1efed47d180f7d53080a88b178cdf97b3e916a))
* **test:** set classic confinement ([f4ac7a0](https://github.com/AlexNabokikh/ubuntu-playbook/commit/f4ac7a0de23e0e3256665b6021a88a3b52a4f125))

## 1.0.0 (2023-05-15)


### Features

* first release ([ea34806](https://github.com/AlexNabokikh/ubuntu-playbook/commit/ea348063bce3a5e36b5f2951085d3b408010677e))
