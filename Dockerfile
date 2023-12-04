FROM python:3.10-slim-bullseye
ENV HOST=0.0.0.0
ENV LISTEN_PORT 8080
EXPOSE 8080
WORKDIR /app
COPY requirements.txt ./requirements.txt 
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
COPY . .
ENTRYPOINT ["panel", "serve", "app.py", "--address", "0.0.0.0", "--port", "8080"]

