# hypress-project-skeleton
![WordPress v5.0.3](https://img.shields.io/badge/wordpress-v5.0.3-blue.svg)
![Last commit](https://img.shields.io/github/last-commit/hypress/project-skeleton.svg?style=flat)

A very basic project skeleton for hypress projects. The main goal is to keep as much as
dependencies away from the host machine.

The base project skeleton for [hypress] driven WordPress projects.  

This skeleton can be generated with the [yeoman hypress generator][generator-hypress].

## Requirements
1. [VirtualBox](https://www.virtualbox.org/)
2. [Vagrant](https://www.vagrantup.com/)
3. [vagrant-hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager)

## Install dependencies with homebrew (macOS)
Run

```bash
brew install cask
brew cask install virtualbox vagrant
vagrant plugin install vagrant-hostmanager
```

## Getting started
You need a copy of all project files. Download it via github or just use the
[yeoman hypress generator][generator-hypress].

To bring your development stack up, just start the vagrant box.

```bash
vagrant up
```

Frontend: http://hypress.local  
Backend: http://hypress.local/wp-admin  
phpMyAdmin: http://hypress.local/phpmyadmin

MySQL user: `hypress`   
MySQL password: `hypress`  
MySQL database: `hypress`  

WordPress user: `hypress`  
WordPress password: `hypress`

## Enable local https
To get local https, you can utilize [mkcert]. Follow the link for installation instructions.

After installing mkcert and creating a local CA create a certificate for hypress.

```bash
cd .hypress/
mkcert hypress.local
```

If you ran `vagrant up` already, you need to provision the box again.

```bash
vagrant provision
```

## Plugin development
If you want to use this setup for WordPress plugin development, change the
`hypress_type` variable in `./.hypress/ansible/settings.yml` from `theme`
to `plugin`.

## Contributing
This projects is open for contributions.

[hypress]: https://github.com/hypress
[generator-hypress]: https://github.com/hypress/generator-hypress
[mkcert]: https://github.com/FiloSottile/mkcert
