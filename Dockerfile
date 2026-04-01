FROM python:3.8.5-slim-buster

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]