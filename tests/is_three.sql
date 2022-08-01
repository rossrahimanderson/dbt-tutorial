{% test is_three(model, column_name) %}

with validation as (
    select 
        {{ column_name }} as value_field 
    from {{ model }}
    where {{ column_name }} !=3
),

validation_error as(
    select
        value_field
    from validation
    where value_field !=3
)

select count(*)
from validation_error


{% endtest %}