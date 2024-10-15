# Fantasy Premier League Player Selector

This project automates the collection of player data from the Fantasy Premier League (FPL) using **Apache Airflow**. It builds an automated data pipeline that fetches and processes FPL data daily.

Airflow is used to schedule and manage the tasks that collect and process data, making the project easily extensible for future enhancements, such as querying and ranking players based on user constraints.

---

## Setup Instructions

To streamline the setup process, a bash script is provided to install and configure Airflow automatically. The script installs Airflow, initializes the necessary database, creates a user, and starts the Airflow services.

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/fpl-player-selector.git
cd fpl-player-selector
```

### 2. Clone the Repository

Run the provided setup_airflow.sh script to set up Airflow. This script will:

Set up the Airflow home directory.
Install Airflow and necessary dependencies.
Initialize the Airflow database.
Create an Airflow admin user.
Start the Airflow scheduler and webserver.

```bash
bash setup_airflow.sh
```

### 3. Access the Airflow Web Interface

Once the script has finished running, you can access the Airflow web interface by navigating to:

- URL: http://localhost:8080
- Login credentials:
- Username: admin
- Password: admin

### 4. Stopping Airflow

To stop the Airflow scheduler and web server, simply close the terminal or stop the processes manually:

Find the process IDs:
```bash
ps aux | grep airflow
```

Kill the processes:
```bash
kill -9 <PID>
```