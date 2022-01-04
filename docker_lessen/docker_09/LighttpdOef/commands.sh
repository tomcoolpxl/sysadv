docker build -t mylighttpd .
# powershell notation
docker run -p 5555:80 -v ${PWD}/html:/var/www/localhost/htdocs/ -v ${PWD}/logs:/var/log/lighttpd/ --name lighttpdoefening mylighttpd
# bash notation
docker run -p 5555:80 -v $(pwd)/html:/var/www/localhost/htdocs/ -v $(pwd)/logs:/var/log/lighttpd/ --name lighttpdoefening mylighttpd