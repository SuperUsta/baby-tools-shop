FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . /app/

WORKDIR /app/babyshop_app


EXPOSE 8025



ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8025", "babyshop.wsgi:application"]