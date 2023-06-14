FROM python:3.12.0b2-slim-bullseye

WORKDIR /app
COPY . .

RUN python -m pip install Django \
    && python mysite/manage.py migrate

EXPOSE 9000

ENTRYPOINT [ "python", "mysite/manage.py", "runserver", "0.0.0.0:9000" ]