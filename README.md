# docker-scan-server
Server set up with saned and hplip, as well as PHP-Scanner-Server, for server

Uses https://github.com/GM-Script-Writer-62850/PHP-Scanner-Server for web-hosted scanning interface.

fork from https://github.com/schamp/docker-rpi-scan-server which was for raspberry pi

## instant run with docker-compose

    mkdir -p volumes/{scans,config}
    chown www-data volumes/{scans,config}
    docker-compose up -d

enjoy your server ot port 8088

## details
### build this image

`docker build build -t php-scan-webserver`

###  start your server 

`docker run --name scanner-php -p 8088:80 --device=/dev/bus/usb:/dev/bus/usb -d  php-scan-webserver`

* share your usb port for scanner discovery
* listen on the host's port 8088 to start scanning
* start daemonized

browse http://localhost:8088/ to start using your scanner
