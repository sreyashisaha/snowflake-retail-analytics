# Snowflake Retail Analytics Pipeline

An end-to-end data pipeline built with Snowflake, dbt, and Looker Studio.

## Architecture
```
CSV Data → Snowflake Stage → Raw Table → dbt Staging → dbt Mart → Looker Studio Dashboard
```

## Tech Stack

- **Snowflake** — Cloud data warehouse (AWS Frankfurt / EU region)
- **dbt Core 1.11** — Data transformation and modelling
- **Looker Studio** — Business intelligence dashboard
- **Python 3.12** — Environment

## Dataset

Supermarket sales dataset — 1,000 transactions across 3 branches (Yangon, Naypyitaw, Mandalay), sourced from Kaggle.

## dbt Models

| Model | Type | Description |
|-------|------|-------------|
| `stg_sales` | View | Cleans raw sales data, converts date formats |
| `sales_summary` | View | Aggregates revenue, units, ratings by city, branch and product line |

## Key Skills Demonstrated

- Snowflake warehouse, database, schema, and stage setup
- Data loading via Snowflake internal stage
- dbt project structure with staging and marts layers
- Role-based access control (RBAC) in Snowflake
- Time Travel and zero-copy cloning
- Dashboard creation in Looker Studio

## Dashboard

[Link to Looker Studio Dashboard] — coming soon
