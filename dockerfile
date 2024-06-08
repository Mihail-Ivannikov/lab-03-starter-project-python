FROM python:3.10-alpine

COPY requirements /requirements
RUN pip install --no-cache-dir -r /requirements/backend.in

COPY . /app
WORKDIR /app

RUN pip install --no-cache-dir -r /requirements/backend.in

CMD ["python", "main.py"]