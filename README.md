# Django Tutorial

* [Install Dependencies](#install-dependencies)
* [Checkout and configure project](#checkout-and-configure-project)
* [Run the app](#run-the-app)
* [Testing](#testing)

## Install Dependencies

*NB*: Assumes OS X

#### Install [Homebrew](http://brew.sh/#install)

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Install [direnv](http://direnv.net/)

```
brew install direnv

# replace .bashrc with your preferred shell config file
echo 'if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi' >> ~/.bashrc
source ~/.bashrc
```

#### Install Python version manager

```
brew install pyenv
```

## Checkout and configure project

#### Checkout the app

```
git clone git@github.com:mdzhang/djangotutorial.git
cd django-hello-world
```

#### Setup development environment variables

```
cp .envrc.sample .envrc
direnv allow
```

#### Install Python and project packages

```
# install python
pyenv install $(cat ./.python-version)

# install pip
if ! which pip > /dev/null; then curl -O https://bootstrap.pypa.io/get-pip.py | sudo python; fi

# install packages
pip install -r requirements/dev.txt
```

## Run the app

```
make run
```

## Testing

TODO
