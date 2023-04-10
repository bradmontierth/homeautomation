Build BlueIris Monitoring Dashboard
3 pieces:

1 - Node-Red flow executing Python script which measures CPU/Memory/Disc space
2 - Update log file to save 1 day per file (to avoid processing huge month file every x minutes) being read by Node-Red and parsed into SQL table
3 - Import grafana dashboard. Give permission to execute import.sh. replace with personal grafana key. Change directory to the location of dashboard json.
