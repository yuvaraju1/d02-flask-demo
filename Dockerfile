FROM python:3.6-slim

RUN useradd -m myuser

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

USER myuser

CMD ["python", "app.py"]
