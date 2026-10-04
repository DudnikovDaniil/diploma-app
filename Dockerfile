FROM nginx:1.27-alpine

LABEL maintainer="Dudnikov Daniil"
LABEL description="Diploma DevOps test application"

# Копируем кастомный конфиг nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копируем статическую страницу
COPY html/index.html /usr/share/nginx/html/index.html

# Открываем порт 80
EXPOSE 80

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost/health || exit 1

# Запускаем nginx в foreground
CMD ["nginx", "-g", "daemon off;"]
