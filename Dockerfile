FROM python:alpine3.16

WORKDIR /app

RUN apk update
RUN apk add build-base libffi-dev

RUN pip install poetry

COPY ./pyproject.toml poetry.lock /app/
COPY ./main.py /app/

CMD ["python", "/app/main.py"]