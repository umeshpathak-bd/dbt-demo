{{ config(materialized='incremental', location_root='s3://demo-raw-pathakuk-1/iceberg_tables/db',file_format='iceberg',incremental_strategy='append') }}
select * from dev.db.iceberg_table_3;
