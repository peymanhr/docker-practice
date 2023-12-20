#!/bin/bash

clean () {
    docker stop phpmyadmin db1
    docker rm phpmyadmin db1
}

run () {
    docker run --name db1 -d -e MYSQL_ROOT_PASSWORD=root -v db1:/var/lib/mysql mysql:8.2 
    docker run --name phpmyadmin -d --link db1 -p 8080:80 -e PMA_HOST=db1 phpmyadmin
}

case $1 in
    run)
	  run;;
    clean)
        clean;;
    *) ;;
esac