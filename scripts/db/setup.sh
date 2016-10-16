#!/usr/bin/env bash

createuser -U postgres -s djangotutorial
createdb -U postgres -O djangotutorial djangotutorial
