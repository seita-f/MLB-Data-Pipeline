FROM apache/airflow:2.7.1-python3.11

USER root

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /opt/airflow
COPY pyproject.toml .

USER airflow
RUN uv pip install --system .