## Print CSV file fields based on other fields properties

### Print CSV fields if some other fields are present

`gtail -n +2 Data.csv| awk -F',' '{for(N=7; N<=NF; N++) if($N!="") {print $2,$3}}' | sort | uniq`

### Print CSV file line based on fields values

`gtail -n +2 Data.csv| awk -F',' '{if($2=="E0" && $3=="201617")  {print $0}}' | wc -l`



