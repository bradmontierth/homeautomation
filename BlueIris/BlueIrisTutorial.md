# Build BlueIris Monitoring Dashboard

There are 3 pieces to build the monitoring dashboard:

1. **Node-Red flow** executing Python script which measures CPU/Memory/Disc space
2. **Update log file** to save 1 day per file (to avoid processing huge month file every x minutes) being read by Node-Red and parsed into SQL table
3. **Import Grafana dashboard**. Give permission to execute `import.sh`. Replace with personal Grafana key. Change directory to the location of dashboard JSON.
