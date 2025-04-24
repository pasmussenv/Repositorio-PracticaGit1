FROM docker:latest

# Copiar el script
COPY mensaje.sh /mensaje.sh
RUN chmod +x /mensaje.sh

# Instalar herramientas mínimas
RUN apk add --no-cache docker-cli bash

CMD ["/mensaje.sh"]
