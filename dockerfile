# Use the official Python image based on Alpine
FROM python:3.10-alpine
RUN apk add --no-cache gcc musl-dev
WORKDIR /app
COPY requirements/backend.in /app/requirements/backend.in
RUN pip install --no-cache-dir -r /app/requirements/backend.in
COPY spaceship /app/spaceship
COPY build /app/build
EXPOSE 8000
CMD ["python", "/app/spaceship/main.py"]
