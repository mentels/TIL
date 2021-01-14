## Check if JSONB array contains element

```sql
select '{"name": "ala", "age": 30, "sons": ["igi", "frank"]}'::jsonb @> '{"sons": ["frank"]}'::jsonb;
# => ?column?
# ----------
# t
# (1 row)
# ^it means "true"
```

Base: https://stackoverflow.com/questions/22736742/query-for-array-elements-inside-json-type


