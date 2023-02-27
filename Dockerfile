FROM python:3.9

WORKDIR /app

COPY requirements.txt .
COPY testServer.py .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5005

CMD ["python", "app.py"]

vRO Test


