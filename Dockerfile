 FROM python:3.10-slim
 ENV PYTHONDONTWRITEBYTECODE=1
 ENV PYTHONUNBUFFERED=1
 WORKDIR /app
 COPY requirements.txt .
 RUN pip install --upgrade pip && pip install -r requirements.txt
 COPY . .
 CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8000"]
 Note:
 Use gunicorn for production-ready Python WSGI servers. Avoid Flask's built-in ser
