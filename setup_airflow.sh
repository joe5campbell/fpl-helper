#!/bin/bash

# Step 1: Set Airflow home directory
export AIRFLOW_HOME=~/airflow

# Step 2: Install Airflow with constraints
AIRFLOW_VERSION=2.5.0
PYTHON_VERSION="$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)"
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

# Step 3: Initialize Airflow database
airflow db init

# Step 4: Create an Airflow user
airflow users create \
    --username admin \
    --password admin \
    --firstname Admin \
    --lastname User \
    --role Admin \
    --email admin@example.com

# Step 5: Start Airflow scheduler and webserver in the background
airflow scheduler &
airflow webserver --port 8080 &