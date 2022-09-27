# Autogenerated at 28.09.2022 07:40 using ./gen-makefile
.DEFAULT_GOAL := help

#===============================================
#	Scripts listed in ./packs
#===============================================

# [PACK] php + composer
composer: php composer-clean

# [TODO] [PACK] qt5 + flameshot from source
flameshot: qt5 flameshot-build

# [PACK] Apache + php + mariadb
lamp: apache php mariadb

# [PACK] zsh + omz + powerline10k + MesloLGS font
omz: zsh omz-clean omz-fancy
	chsh -s /usr/bin/zsh
	@exec zsh

#===============================================
#	Scripts listed in ./install
#===============================================

# Install apache2 (latest)
apache:
	@./install/apache

# Install bunch of software from apt
apt:
	@./install/apt

# Install Canon Pixma MG2500 + ppa
canon-mg2500:
	@./install/canon-mg2500

# Install google chrome (latest)
chrome:
	@./install/chrome

# Install composer (latest)
composer-clean:
	@./install/composer-clean

# Install docker (latest) + docker-compose (latest) + ppa
docker:
	@./install/docker

# Install droidcam v1.8.2
droidcam:
	@./install/droidcam

# Install droidcam-obs plugin v1.5.1
droidcam-obs:
	@./install/droidcam-obs

# Install file templates (KDE)
file-templates-kde:
	@./install/file-templates-kde

# [TODO] Build flameshot from src (latest)
flameshot-build:
	@./install/flameshot-build

# Install git (latest)
git:
	@./install/git

# Install golang v1.18.3
golang:
	@./install/golang

# Install grub-customizer (latest) + ppa
grubc:
	@./install/grubc

# Install KDE Window AppMenu Applet
kde-appmenu:
	@./install/kde-appmenu

# Install libreoffice
libreoffice:
	@./install/libreoffice

# Install lite-xl v2.0.5 (draft)
lite-xl:
	@./install/lite-xl

# Install mariadb (latest) and php-mysql + phpMyAdmin (if php is installed)
mariadb:
	@./install/mariadb

# Install nodejs + npm via nvm
nodejs:
	@./install/nodejs

# Install ntfy (latest) + ppa
ntfy:
	@./install/ntfy

# Install omz (latest)
omz-clean:
	@./install/omz-clean

# Install omz fancy (powerline10k + MesloLGS font)
omz-fancy:
	@./install/omz-fancy

# Install papirus-icon-theme (latest)
papirus:
	@./install/papirus

# Install postgresql (latest) and php-pgsql (if php is installed)
pgsql:
	@./install/pgsql

# Install php v8.1 + ppa
php:
	@./install/php

# Install postman (latest)
postman:
	@./install/postman

# Install qt5
qt5:
	@./install/qt5

# Install rustdesk client v1.1.9 (deb)
rustdesk:
	@./install/rustdesk

# Install bunch of software from snap
snap:
	@./install/snap

# Install syncthing (latest) + ppa
syncthing:
	@./install/syncthing

# Install telebit (latest)
telebit:
	@./install/telebit

# Install ulauncher (latest) + ppa
ulauncher:
	@./install/ulauncher

# Install wine (latest) + ppa (focal)
wine:
	@./install/wine

# Install zint (latest)
zint:
	@./install/zint

# Install vanilla zsh
zsh:
	@./install/zsh

#===============================================
#	Scripts listed in ./upgrade
#===============================================

# Upgrade omz
^omz:
	@./upgrade/omz

#===============================================
#	Scripts listed in ./uninstall
#===============================================

# Uninstall docker
/docker:
	@./uninstall/docker

# Uninstall omz
/omz:
	@./uninstall/omz

#===============================================
#	Service goals
#===============================================

self:
	@./gen-makefile

help: Makefile
	@echo "Ubuntu software installator"
	@echo
	@echo "Usage:\n 	make help|- show this help\n 	make self|- regenerate Makefile (alias of ./gen-makefile)\n 	make GOAL|- install software\n 	make ^GOAL|- upgrade software\n 	make /GOAL|- uninstall software" | column -ts '|'
	@echo "\nYou can combine GOALs, here are some examples:"
	@echo "\tmake @docker docker"
	@echo "\tmake php @docker ^omz"
	@echo "\nAvailable GOALs:"
	@sed -n '/^#/{N;s/# *\(.*\)\n\([^# .].*:\)/\t\2\1/p}' $< | column -ts ':'
