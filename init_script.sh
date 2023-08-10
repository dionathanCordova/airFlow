#!/bin/bash
# init_script.sh

echo "Aguardando inicialização do Airflow..."

while true; do
    airflow db check
    if [ $? -eq 0 ]; then
        break
    fi
    sleep 5
done

echo "Airflow inicializado. Executando comandos..."

airflow users create --username admin --firstname Admin --lastname User --role Admin --email admin@example.com --password admin

echo "Comandos executados com sucesso!"
