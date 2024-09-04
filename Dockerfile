FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir flask flask_httpauth

EXPOSE 80

RUN python seed_db.py

RUN python adduser.py

VOLUME ["/app/"]

EXPOSE 8080

CMD ["python", "softdes.py"]
