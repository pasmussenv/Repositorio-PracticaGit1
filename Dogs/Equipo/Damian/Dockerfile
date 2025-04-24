# Utilizamos una imagen base de Ubuntu
FROM ubuntu:latest

# Actualizamos e instalamos paquetes necesarios
RUN apt-get update && apt-get install -y \
    bash

# Copiamos el script a la imagen
COPY script.sh /script.sh

# Damos permisos de ejecución
RUN chmod +x /script.sh

# Ejecutamos el script cuando se inicie el contenedor
CMD ["/script.sh"]
