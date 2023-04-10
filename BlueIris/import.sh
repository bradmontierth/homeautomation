#!/usr/bin/env bash

# DESTINATION VARIABLES
export token=**replace token**
export grafanaurl=http://localhost:3000/api


cd /home/pi/hubbackups/grafana/restore



for FILE in *dashboard*; do
  echo Importing Dashboard: $FILE
  cat $FILE | jq '. * {overwrite: false, dashboard: {id: null}}' | curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $token" "$grafanaurl/dashboards/db" -d @- ;
done



for FILE in *datasource*; do
  echo Importing Dashboard: $FILE
  cat $FILE | curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $token" "$grafanaurl/datasources/" -d @- ;
done
