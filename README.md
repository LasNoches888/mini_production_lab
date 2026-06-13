# Mini Production Lab

## Overview

Mini Production Lab is a Docker-based infrastructure project that simulates a small production environment.

The project includes:

* Flask web application
* Nginx reverse proxy
* PostgreSQL database
* Redis cache
* Prometheus monitoring
* Node Exporter
* cAdvisor
* Automated PostgreSQL backups

The entire environment can be started with a single command:

```bash
docker compose up -d
```

---

## Architecture

```text
Browser
   │
   ▼
Nginx
   │
   ▼
Flask Application
   │
   ├── PostgreSQL
   └── Redis

Monitoring Stack

Node Exporter ──┐
                ├── Prometheus ──► Grafana
cAdvisor ───────┘
```

---

## Technology Stack

* Docker
* Docker Compose
* Python / Flask
* Nginx
* PostgreSQL
* Redis
* Prometheus
* Grafana
* Linux
* Bash

---

## Project Structure

```text
mini_production_lab/

├── docker-compose.yml
├── .env
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── nginx/
│   └── default.conf
│
├── prometheus/
│   └── prometheus.yml
│
├── backup/
│   └── backup.sh
│
└── README.md
```

---

## Deployment

Clone repository:

```bash
git clone https://github.com/LasNoches888/mini_production_lab.git
cd mini_production_lab
```

Start services:

```bash
docker compose up -d
```

Check containers:

```bash
docker ps
```

---

## Available Services

Application:

```text
http://SERVER_IP
```

Prometheus:

```text
http://SERVER_IP:9090
```

cAdvisor:

```text
http://SERVER_IP:8080
```

Grafana:

```text
http://GRAFANA_SERVER_IP:3000
```

---

## Monitoring

Prometheus collects metrics from:

* Node Exporter
* cAdvisor

Grafana is used for visualization and dashboard creation.

---

## Backup

A scheduled backup script performs PostgreSQL dumps and transfers backup files to a secondary server.

Example cron job:

```bash
0 2 * * * /home/vm1user/mini_production_lab/backup/backup.sh
```

---

## Skills Demonstrated

* Docker containerization
* Multi-service architecture
* Reverse proxy configuration
* Linux administration
* Monitoring and observability
* Database backup automation
* Infrastructure documentation
* Git and GitHub workflow

---

## Future Improvements

* HTTPS with Let's Encrypt
* GitHub Actions CI/CD
* Alertmanager integration
* PostgreSQL Exporter
* Redis Exporter
* Infrastructure as Code with Terraform
* Configuration management with Ansible

```
```
