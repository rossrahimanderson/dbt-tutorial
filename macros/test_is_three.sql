{% macro test_is_three(model, column_name, identifier) %}

with validation as (
    select 
        {{ column_name }} as field,
        {{ identifier }} as id
    from {{ model }}
)
    select
        field,
        id
    from validation
    where field = 0


{% endmacro %}