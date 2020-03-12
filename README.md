# BluecherryClient-docker
Docker recipe for Bluecherry-client

This docker recipe solves the issue of bluecherry-client not running on newer Ubuntu/Debian or any other GNU/Linux OS.

This docker uses Ubuntu 16.04 and needs the bluecherry-client_2.2.6-1_amd64.deb (Ubuntu 16.04 and newer) to be placed in same folder as the dockerfile.

Also a bluecherry.conf needs to be created and placed in the folder. I created mine by first building the docker image and setting up Bluecherry Client - the conf is stored in /root/.config/bluecherry/

Build command:

docker build -t bluecherry-client .

and exectue with:

sh run.sh
