#!/bin/bash

BASEDIR=`pwd`
ENV_NAME=MACHINEKAM

upgrade_all_deps() {
    pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
}

clean_all() {
  rm -rf **/*.pyc
}

create_py3env() {
    conda create -n $ENV_NAME python=3 -y
    conda install -n $ENV_NAME -c r r=3.5.1 r-essentials r-base
}

activate_env() {
    source activate $ENV_NAME
}

case $1 in
    py3.create)
        create_py3env
        ;;
    py.delete)
        conda env remove -n $ENV_NAME -y
        ;;
    py.activate)
        activate_env
        ;;
    py.notebook)
        activate_env
        pip install -U jupyter
        pip install git+https://github.com/Calysto/calysto_hy.git
        python -m calysto_hy install
        jupyter notebook $BASEDIR/notebooks
        ;;
    deps.upgrade)
        activate_env
        upgrade_all_deps
        ;;
    deps.list)
        activate_env
        pip list
        ;;
    deps.outdated)
        activate_env
        pip list --outdated
        ;;
    deps.freeze)
        activate_env
        pip freeze > requirements.txt
        ;;
    deps.install)
        activate_env
        pip install -r requirements.txt --upgrade
        ;;
    clean)
        clean_all
        ;;
    esac
exit 0