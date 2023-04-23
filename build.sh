#!/bin/bash

# Проверяем количество аргументов
if [ "$#" -ne 1 ]; then
    echo "Ошибка: требуется ровно 1 аргумент."
    exit 1
fi

if [[ $1 =~ ^0[0-9]$ ]]; then
    docker build -t my_img:v1 -f Dockerfile_$1 .
    docker run -d -p 80:81 --name my_cont -v $(pwd)/materials/nginx:/etc/nginx  my_img:v1
else
    echo "Ошибка: неправильный формат аргумента"
    exit 1
fi