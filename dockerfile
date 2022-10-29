FROM ubuntu:latest

WORKDIR /home/app

COPY /home/yuri/Desktop/DockerPractice/index.html /home/app

RUN apt update 

RUN apt install –y apache2 

EXPOSE 80

CMD [“apache2ctl”, “-D”, “FOREGROUND”]
