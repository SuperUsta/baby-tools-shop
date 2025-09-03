FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . /app/

WORKDIR /app/babyshop_app
RUN python manage.py makemigrations
RUN python manage.py migrate


EXPOSE 8025

ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8025", "babyshop.wsgi:application"]
