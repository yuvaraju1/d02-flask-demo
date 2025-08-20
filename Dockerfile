FROM python:3.11-slim

RUN useradd -m myuser

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

USER myuser

CMD ["python", "app.py"]
