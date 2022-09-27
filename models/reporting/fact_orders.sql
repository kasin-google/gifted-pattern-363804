{{ config(materialized='table') }}

select
    t1.SalesOrderDetailID, t2.*
from {{ ref ('stg_order_details') }} t1 join {{ ref ('stg_order_headers') }} t2 on t1.SalesOrderID = t2.SalesOrderID