# Usa la imagen base de Ubuntu 20.04
FROM ubuntu:20.04

# Actualiza el sistema e instala las dependencias necesarias
RUN apt update -y && apt install -y wget

# Descarga el binario de Gotty y lo coloca en /usr/local/bin
RUN wget -P /usr/local/bin/ https://raw.githubusercontent.com/Ivangabriel21210/HolicraftDocker/refs/heads/main/gotty && \
    chmod +x /usr/local/bin/gotty

# Exponer el puerto 8080 para Gotty
EXPOSE 8080

# Comando para ejecutar Gotty en el puerto 8080
CMD ["gotty", "-w", "--port", "8080", "/bin/bash"]
