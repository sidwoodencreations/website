FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py .
COPY service ./service
COPY dist ./dist
EXPOSE 8888
ENTRYPOINT ["python", "-u", "main.py"]