# 05. Статический анализ Terraform (TFLint + Checkov)

## Что здесь

- **27-terraform-checks.png** — проверка `terraform-infrastructure`.
- **28-terraform-checks-bootstrap.png** — проверка `terraform-bootstrap`.

## Что проверяется

| Инструмент | Что делает |
|------------|------------|
| **TFLint** | Статический анализ Terraform-кода |
| **Checkov** | Поиск уязвимостей в IaC |
| **Terraform Validate** | Проверка синтаксиса |

## Результат

**Все 3 job — Success** для обоих репозиториев:

| Job | infrastructure | bootstrap |
|-----|---------------|-----------|
| **TFLint** |  Success (8s) |  Success (5s) |
| **Checkov** |  Success (28s) |  Success (20s) |
| **Terraform Validate** |  Success (11s) |  Success (7s) |

**Checkov** выдаёт **несколько warning'ов** — есть, но **не критично**.
