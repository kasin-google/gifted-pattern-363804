select
    *
from {{ source('sql_server_sales', 'salesperson') }}