FROM python:3.10-slim
WORKDIR /app
COPY MLProject/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY MLProject/ .
CMD ["python", "modelling.py"]
