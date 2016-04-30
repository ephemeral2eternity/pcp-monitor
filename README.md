# pcp-monitor
Extract logs from PCP monitoring agent

## Usage
### Configure the metrics list
1. Please edit the metrics.list file to add more metrics you want.
2. Please use `pminfo` command to list all the available metrics.

### Change the archive folder
1. Edit the extractMetrics.sh to change archiveFolder to the local pcp folder.
2. Usually the local pcp folder is in : /var/log/pcp/pmlogger/[yourhostname]/
3. By default the script will extract the present day data.
4. You can denote the past archive file name in achiveFile.

### Extract the metrics value and write into csv file
```
./extractMetrics.sh [startHour] [endHour]
```
