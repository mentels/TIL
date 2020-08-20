## How to check table's indices?

In the postgresql shell:

```
\d TABLE_NAME
```

or 

```sql
select *  from pg_indexes where tablename = 'TABLE_NAME';
```
