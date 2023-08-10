# Dockerfile
FROM apache/airflow:2.1.2
USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Adicione estes comandos para ajustar as permissões
RUN mkdir -p /opt/airflow/logs /opt/airflow/dags
RUN chown -R airflow: /opt/airflow

USER airflow

RUN airflow db init