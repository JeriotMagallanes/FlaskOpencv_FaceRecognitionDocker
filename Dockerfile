FROM python:3.8

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios (asegúrate de incluir todos los archivos de tu aplicación)
COPY . .

# Instalar dependencias Python
RUN pip install --no-cache-dir -r requirements.txt

# Comando por defecto para ejecutar la aplicación Flask
CMD ["python", "app.py"]
