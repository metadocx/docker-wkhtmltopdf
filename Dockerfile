FROM ubuntu:22.04

RUN apt update \
    && apt install -y wget;

RUN wget -P /tmp https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb

RUN apt install -y /tmp/wkhtmltox_0.12.6.1-2.jammy_amd64.deb

RUN rm /tmp/wkhtmltox_0.12.6.1-2.jammy_amd64.deb

RUN mkdir /tmp/data
