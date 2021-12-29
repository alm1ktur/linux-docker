FROM python:latest
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt && python3 manage.py makemigrations && python3 manage.py migrate
CMD gunicorn locallibrary.wsgi:application --bind 0.0.0.0:8000
