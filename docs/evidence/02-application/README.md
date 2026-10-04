# 02. Тестовое приложение

Второй этап практикума: подготовка тестового nginx-приложения,
сборка Docker-образа, push в Yandex Container Registry
и деплой в Kubernetes.

---

## 12-app-browser-local — приложение локально

![Приложение локально](12-app-browser-local.png)

**Что видно:** HTML-страница, отдаваемая nginx на `http://localhost:8080`
после команды `docker run`.

**Зачем:** подтверждает, что Dockerfile собран корректно
и приложение работает вне Kubernetes.

---

## 13-docker-build — сборка образа

![docker build](13-docker-build.png)

**Что видно:** процесс `docker build` — слои, теги, размер итогового
образа (`nginx:1.27-alpine` + статика).

**Зачем:** подтверждает, что образ воспроизводимо собирается
из Dockerfile.

---

## 14-yc-container-registry — образ в YCR

![yc container image list](14-yc-container-registry.png)

**Что видно:** образ `diploma-app:v1.0.0` в Yandex Container Registry
с тегом и датой.

**Зачем:** подтверждает, что образ запушен в приватный registry
и доступен для Kubernetes.

---

## 18-app-browser-k8s — приложение через ingress

![Приложение в Kubernetes](18-app-browser-k8s.png)

**Что видно:** та же HTML-страница, но открытая по внешнему IP
ingress-контроллера.

**Зачем:** финальное подтверждение, что приложение работает
в Kubernetes и доступно из интернета.

