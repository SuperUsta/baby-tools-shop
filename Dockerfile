FROM python:3.12.8

WORKDIR /app

COPY . $WORKDIR

RUN python -m pip install -r requirements.txt

<<<<<<< Updated upstream
EXPOSE 5000
=======
COPY . /app/

WORKDIR /app/babyshop_app

EXPOSE 8025



ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8025", "babyshop.wsgi:application"]
>>>>>>> Stashed changes
