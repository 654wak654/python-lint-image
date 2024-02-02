FROM python:3.12-slim

LABEL maintainer="ozan@egitmen.net"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install gcc musl-dev -y

RUN pip install 'pylint==3.0.3' \
    'pycodestyle==2.11.1' \
    'flake8==7.0.0' \
    'black==24.1.1' \
    'mypy==1.8.0' \
    'isort==5.13.2'
