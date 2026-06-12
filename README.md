# 💰 Price Tracker

Sistema automatizado de seguimiento de precios usando n8n, PostgreSQL y Grafana.
Captura precios de criptomonedas cada hora y los visualiza en un dashboard en tiempo real.

## 🛠️ Stack

| Herramienta | Rol |
|-------------|-----|
| n8n | Automatización y captura de datos |
| PostgreSQL | Base de datos |
| Grafana | Dashboard y visualización |
| Docker | Entorno local |

## 🚀 Instalación

### Requisitos
- Docker
- Docker Compose

### Pasos

1. Clona el repositorio
\```bash
git clone https://github.com/luisosorto6-dot/price-tracker.git
cd price-tracker
\```

2. Configura las variables de entorno
\```bash
cp .env.example .env
\```

3. Levanta los servicios
\```bash
docker compose up -d
\```

4. Abre los servicios en tu navegador

| Servicio | URL |
|----------|-----|
| n8n | http://localhost:5678 |
| Grafana | http://localhost:3000 |

## 📊 Dashboard

El dashboard muestra:
- Precio actual de Bitcoin en USD
- Precio actual de Ethereum en USD
- Historial de los últimos precios registrados

## ⚙️ Cómo funciona

1. n8n consulta la API de CoinGecko cada hora
2. Extrae los precios de Bitcoin y Ethereum
3. Los guarda en PostgreSQL
4. Grafana lee la base de datos y actualiza el dashboard

## 📁 Estructura

\```
price-tracker/
├── docker-compose.yml
├── .env.example
├── database/
│   └── init.sql
├── n8n/
│   └── workflows/
└── grafana/
    └── dashboards/
\```