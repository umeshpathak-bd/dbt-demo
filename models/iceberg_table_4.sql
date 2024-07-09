{{ config(materialized='incremental', location_root='s3://demo-raw-pathakuk-1/iceberg_tables/db',file_format='iceberg',incremental_strategy='append') }}

select id from {{ ref('iceberg_table_2') }} where id='100';
