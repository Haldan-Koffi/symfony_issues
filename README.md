# symfony_issues

docker run --name mysql_container -p 3309:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=symfony_issues mysql

docker exec -it mysql_container bash

sonar-scanner.bat -D"sonar.projectKey=symfony_issues" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.token=sqp_8992ee1285af5a82d441131d71a73f209c8af783"