FROM python:3.10

WORKDIR /app
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY main.py .
COPY service .
COPY dist .

ENTRYPOINT ["python", "main.py"]
