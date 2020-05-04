#!/bin/bash

VENV_NAME="atlas_env"

# Creating virtual environment
virtualenv $VENV_NAME

# Installing PyPI packages
./$VENV_NAME/bin/pip install -r requirements.txt

# Adding saphyra
cd $VENV_NAME
git clone https://github.com/jodafons/saphyra
cd lib/*/*/
ln -s ../../../saphyra/saphyra/python saphyra
ln -s ../../../saphyra/external/ringerdb/python ringerdb
ln -s ../../../saphyra/external/kolmov/kolmov/python kolmov
