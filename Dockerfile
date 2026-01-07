# Dockerfile
FROM python:3.12-slim

# Diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo de dependências e instalar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação
COPY app.py .

# Comando que roda o app quando o container iniciar
CMD ["python", "app.py"]
