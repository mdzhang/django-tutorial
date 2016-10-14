# Django Tutorial

* [Checkout and configure project](#checkout-and-configure-project)
* [Run the app](#run-the-app)
* [Testing](#testing)

## Checkout and configure project

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

#### Install Brew Formulae

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

#### Install Python and project packages

```
# install python
pyenv install $(cat ./.python-version)

# install packages
pip install -r requirements/dev.txt
```

#### Setup the database

```
./docker/db/setup.sh
```

#### Create admin user

```
docker-compose exec web /bin/bash -c "python manage.py createsuperuser"
```

## Run the app

```
make run
```

## Testing

TODO
