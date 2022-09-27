{% snapshot snapshots_customers %}

{{
    config(
      target_schema='98_dbt_snapshot',
      unique_key='CustomerID',

      strategy='timestamp',
      updated_at='ModifiedDate',
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}