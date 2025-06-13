# Usa la imagen oficial de Nginx basada en Alpine, que es muy ligera y ya está preconfigurada.
FROM nginx:alpine

# Opcional: Eliminar el archivo index.html predeterminado de Nginx si existe.
# La imagen oficial Nginx sirve por defecto desde /usr/share/nginx/html.
# Usamos -f para que no dé error si el archivo no existe.
RUN rm -f /usr/share/nginx/html/index.html

# Copia tu archivo index.html personalizado
# Asegúrate de que 'index.html' esté en el mismo directorio que tu Dockerfile.
COPY index.html /usr/share/nginx/html/index.html

# El puerto 80 ya está expuesto por la imagen base de Nginx,
# y el comando para ejecutar Nginx en primer plano también está configurado en ella.
# No necesitas EXPOSE ni CMD aquí, a menos que quieras personalizar el comportamiento de Nginx.

