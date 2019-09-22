## Custom Dockerfile
FROM consol/ubuntu-icewm-vnc
ENV REFRESHED_AT 2018-03-18

USER 0

RUN apt-get update -y && apt-get install firefox -y

USER 1000
