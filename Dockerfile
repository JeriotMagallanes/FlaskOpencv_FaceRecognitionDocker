# Utilizar una imagen base de Python para Linux
FROM python:3.9

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo de requerimientos
COPY requirements.txt requirements.txt

# Instalar las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto que utilizará la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["waitress-serve", "--listen=0.0.0.0:5000", "app:app"]
