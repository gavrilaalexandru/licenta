FROM python:3.13-slim

WORKDIR /code

RUN apt-get update && apt-get install -y \
    gcc \
    libpcap-dev \
    nmap \
    libpq-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /code/app

EXPOSE 8000

CMD ["fastapi", "dev", "app/main.py", "--host", "0.0.0.0", "--port", "8000"]
