FROM python:3.12-slim

LABEL maintainer="ozan@egitmen.net"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install gcc musl-dev -y

RUN pip install 'pylint==3.0.1' \
    'pycodestyle==2.11.0' \
    'flake8==6.1.0' \
    'black==23.9.1' \
    'mypy==1.6.0' \
    'isort==5.12.0'
