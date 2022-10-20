# kafka container
kafka image with minimum config.
1. how to use
- download kafka [download page](https://kafka.apache.org/downloads)
- extract kafka you downloaded
- rename `kafka_2.13-3.3.1` into your extracted folder kafka 
- run `sudo docker build -t {image_name}:{version number}` for linux
- run `docker build -t {image_name}:{version number}` for windows docker desktop
- you can try to use it with `sudo docker run -it -e kafka_port=9095 -p 9095:9095 {image_name}:{version_number} /bin/bash` or use it in docker compose


2. environtment variables  
currently only one environtment variables.
- kafka_port  
port that will be used by kafka

