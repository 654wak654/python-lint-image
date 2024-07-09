FROM python:3.12-slim

LABEL maintainer="ozan@egitmen.net"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install gcc musl-dev -y

RUN pip install 'pylint==3.2.5' \
    'pycodestyle==2.12.0' \
    'flake8==7.1.0' \
    'black==24.4.2' \
    'mypy==1.10.1' \
    'isort==5.13.2' \
    'ruff==0.5.1'
