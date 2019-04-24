#!/bin/bash

if [ ! `which uwsgi` ]
then
        echo 'not found executable uwsgi'
        exit 1
fi

export UWSGI_CHDIR=$(pwd)
export UWSGI_EXEC=$(pwd)/uwsgi.py
export UWSGI_LOG=$(pwd)/hoge.log
echo $UWSGI_CHDIR $UWSGI_EXEC $UWSGI_LOG
uwsgi --ini uwsgi.ini
