FROM python:3.12-slim

RUN pip install mkdocs mkdocs-material

WORKDIR /app
COPY . .

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
