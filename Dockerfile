FROM python:3.11-slim
WORKDIR /app
COPY dist/*.whl /app/

RUN pip install --no-cache-dir /app/*.whl
RUN mkdir -p /app/instance
EXPOSE 5001

CMD ["devops-beadando"]