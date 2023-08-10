from airflow import DAG
from airflow.operators.dummy_operator import DummyOperator
from datetime import datetime

default_args = {
    'start_date': datetime(2023, 8, 10),
    'schedule_interval': None,  # Defina o agendamento desejado
}

with DAG('meu_dag', default_args=default_args, catchup=False) as dag:
    start = DummyOperator(task_id='start')
    end = DummyOperator(task_id='end')
    
    start >> end
