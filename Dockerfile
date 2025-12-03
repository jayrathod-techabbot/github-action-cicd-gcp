FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy application last (so changes always trigger rebuild)
COPY . /app

EXPOSE 5000
ENV FLASK_APP=application.py
CMD ["python", "application.py"]
