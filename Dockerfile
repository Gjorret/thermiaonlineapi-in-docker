# Docker file for gjorret/thermia-online-api

FROM python:3-slim

WORKDIR /usr/src/app

COPY requirements.txt credentials.py ./

ADD https://raw.githubusercontent.com/klejejs/python-thermia-online-api/f5ee65456eb347452064f677225c9e184d4cfe40/example.py .
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt