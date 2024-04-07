#!/bin/bash

clean () {
    docker stop phpmyadmin db1
    docker rm phpmyadmin db1
    docker network rm app
}

run () {
    docker network create --driver bridge --subnet 10.1.1.0/24 --gateway 10.1.1.1 app
    docker run --name db1 --network=app -d -e MYSQL_ROOT_PASSWORD=root -v db1:/var/lib/mysql mysql:8.2 
    docker run --name phpmyadmin --network=app -d -p 8080:80 -e PMA_HOST=db1 phpmyadmin
}

case $1 in
    run)
	  run;;
    clean)
        clean;;
    *) ;;
esac
