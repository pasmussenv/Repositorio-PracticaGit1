#!/bin/bash

echo "Hola, soy David Raez 😎"

# Crear una carpeta temporal para el contenido del sitio
mkdir -p /tmp/nginx-web

# Crear el index.html con el mensaje
cat <<EOF > /tmp/nginx-web/index.html
<!DOCTYPE html>
<html>
<head>
  <title>David Webserver</title>
  <style>
    body {
      font-family: sans-serif;
      background: #111;
      color: #0f0;
      text-align: center;
      margin-top: 20%;
    }
  </style>
</head>
<body>
  <h1>Y esta es mi webserver nginx desde sh, David Raez</h1>
</body>
</html>
EOF

# Levantar NGINX en Docker con ese contenido
docker run --rm -d \
  -p 8080:80 \
  -v /tmp/nginx-web:/usr/share/nginx/html \
  --name nginx-david \
  nginx:alpine

echo "Servidor NGINX levantado en http://localhost:8080 🚀"

# Intentar abrir el navegador automáticamente
if command -v xdg-open &> /dev/null; then
    xdg-open http://localhost:8080
elif command -v open &> /dev/null; then
    open http://localhost:8080
elif command -v start &> /dev/null; then
    start http://localhost:8080
else
    echo "Abre tu navegador y ve a: http://localhost:8080"
fi
