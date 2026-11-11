# dbt_scooters

Учебный dbt-проект для трансформации данных. Демонстрирует базовые практики dbt: модели, тесты, документацию.

## Требования

- Python 3.11+
- [uv](https://docs.astral.sh/uv/) (пакетный менеджер)
- Настроенный профиль подключения к хранилищу (`~/.dbt/profiles.yml`)

## Установка

    uv sync

## Базовые команды dbt

Все команды выполняются через `uv run`:

    # Проверка подключения и конфигурации
    uv run dbt debug

    # Запуск всех моделей
    uv run dbt run

    # Запуск конкретной модели
    uv run dbt run --select my_model

    # Тестирование моделей
    uv run dbt test

    # Сборка (run + test для выбранных ресурсов)
    uv run dbt build

    # Генерация документации
    uv run dbt docs generate

    # Локальный просмотр документации
    uv run dbt docs serve

## Структура проекта

    dbt_scooters/
    ├── models/          # SQL-модели
    ├── seeds/           # Статические CSV-данные
    ├── snapshots/       # Снимки изменяющихся данных
    ├── tests/           # Пользовательские тесты
    ├── macros/          # Переиспользуемые Jinja-макросы
    └── dbt_project.yml  # Конфигурация проекта