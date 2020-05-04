#!/bin/bash

VENV_NAME="atlas_env"

# Creating virtual environment
virtualenv $VENV_NAME

# Installing PyPI packages
./$VENV_NAME/bin/pip install -U pip
./$VENV_NAME/bin/pip install -U -r requirements.txt

# Adding saphyra, ringerdb and kolmov
cd $VENV_NAME
git clone https://github.com/jodafons/saphyra
cd saphyra
chmod a+x setup.sh
./setup.sh
cd ..
cd lib/*/*/
ln -s ../../../saphyra/saphyra/python saphyra
ln -s ../../../saphyra/external/ringerdb/python ringerdb
ln -s ../../../saphyra/external/kolmov/kolmov/python kolmov
