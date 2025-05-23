FROM python:3.12.8

WORKDIR /app

COPY . $WORKDIR

RUN python -m pip install -r requirements.txt

EXPOSE 5000