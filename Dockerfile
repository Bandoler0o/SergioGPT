# Usa la imagen base
FROM ghcr.io/open-webui/open-webui:main

# Define variables de entorno personalizadas
ENV WEBUI_NAME="SergioGPT"
ENV WEBUI_URL="http://192.168.100.213:3000"

# Copia el archivo JSON a la ruta deseada dentro del contenedor
COPY ./data/model.json /app/backend/data/model.json

# Exponer puertos si es necesario (no obligatorio porque ya está configurado en docker-compose)
EXPOSE 8080
