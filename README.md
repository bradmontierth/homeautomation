# NodeRED Examples

1. **Schedule battery report on multiple devices** 
   ![Battery Report Check](NodeRED/Battery%20Check.png)
   - This involves 3 parts:
     1. First set of devices wired to a function node that adds the device name to an array and saves in a global variable. Use the inject node to run once and make sure the array include each sensor you want to monitor (this is necessary in case some sensors are already not reporting).
     2. Second is the same list of devices wired to another function nodes that sends all event updates to the same global variable with the timestamp.
     3. An inject node with the frequency you want reports sent. The function node here contains the logic for time threshold you consider a problem (in hours, change as needed). Configure pushover or other device notification service.
2. **Backup WLED config and presets**
3. **Check status of multiple devices**
4. **Download Hubitat backup**
5. **Holiday lighting schedule**
6. **Scrape Zigbee data from Hubitat**

