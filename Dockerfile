FROM python:3.11.2-bullseye

ENV PYTHONUNBUFFERED=1

RUN pip install psycopg2-binary
WORKDIR /app
COPY hello.py /app

ENTRYPOINT ["python", "/app/hello.py"]
