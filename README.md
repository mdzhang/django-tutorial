# Django Tutorial

Django Tutorial example that incorporates Docker and other best practices

## Table of Contents

* [Installation](#installation)
* [Running](#running)
* [Testing](#testing)
* [Deploying](#deploying)
* [Resources](#resources)

## Installation

*NB*: Assumes OS X

#### Install [Homebrew](http://brew.sh/#install)

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Checkout the app

```
git clone git@github.com:mdzhang/djangotutorial.git
cd django-hello-world
```

#### Install Homebrew packages

```
brew tap Homebrew/bundle
brew bundle
```

#### Configure shell

```
# replace .bashrc with your preferred shell config file
echo 'if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi' >> ~/.bashrc
source ~/.bashrc
```

#### Setup development environment variables

```
cp .envrc.sample .envrc
direnv allow
```

#### Install Python

```
pyenv install $(cat ./.python-version)
```

#### Install Python packages

```
pip install -r requirements/dev.txt
```

#### Install [Git-hooks](https://github.com/git-hooks/git-hooks)

```
git hooks --install
```

*NB*: Cannot use `docker-compose` commands inside hooks. [Issue](https://github.com/docker/compose/issues/3491)

#### Complete app setup

```
make setup
```

## Running

#### Start the server

```
make run
```

#### View in browser

```
make open
```

## Testing

```
make test
```

## Deploying

TODO

## Resources

- [Django Tutorial](https://docs.djangoproject.com/en/1.10/intro/)
- Open source Django apps [[1]](https://github.com/django/djangoproject.com) [[2]](https://github.com/samuelclay/NewsBlur)
- If you use [Atom](https://atom.io/) as your editor, recommend using packages:
  - [atom-beautify](https://atom.io/packages/atom-beautify)
  - [linter-flake8](https://atom.io/packages/linter-flake8)
