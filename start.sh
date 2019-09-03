#! /bin/bash

source check_params.sh

check_docker_config

if [ $file_found -eq 1 ]
then
    echo Using docker configuration file : $file
    echo
    docker-compose -f $file up $2
fi
