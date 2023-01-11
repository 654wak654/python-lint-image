FROM python:3.10-slim

LABEL maintainer="ozan@egitmen.net"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install gcc musl-dev -y

RUN pip install 'pylint==2.15.10' \
    'pylint_django==2.5.3' \
    'pycodestyle==2.10.0' \
    'flake8==6.0.0' \
    'black==22.12.0' \
    'mypy==0.991' \
    'isort==5.11.4'
