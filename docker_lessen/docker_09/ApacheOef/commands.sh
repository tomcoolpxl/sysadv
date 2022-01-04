docker build -t myapache .
# powershell notation
docker run -p 4444:80 -v ${PWD}/html:/var/www/html -v ${PWD}/apachelogs:/var/log/apache2 --name apacheoefening myapache
# bash notation
docker run -p 4444:80 -v $(pwd)/html:/var/www/html -v $(pwd)/apachelogs:/var/log/apache2 --name apacheoefening myapache