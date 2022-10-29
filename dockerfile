FROM ubuntu:latest

WORKDIR /home/app

RUN sudo apt update

COPY /home/yuri/Desktop/DockerPractice/CV-website/index.html /home/app

RUN apt update 

RUN apt install –y apache2 

EXPOSE 80

CMD [“apache2ctl”, “-D”, “FOREGROUND”]