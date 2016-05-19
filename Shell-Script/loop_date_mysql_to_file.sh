#/bin/bash

# malformed input date
input_start=2016-1-1
input_end=2016-3-31

# Formatting date
# After this, startdate and enddate will be valid ISO 8601 dates,
# or the script will have aborted when it encountered unparseable date
# such as input_end=abcd
startdate=$(date -I -d "$input_start") || exit -1
enddate=$(date -I -d "$input_end")     || exit -1

d="$startdate"
while [ "$d" != "$enddate" ]; do
  echo $d

  echo "set @period_start='$d 00:00:00'; set @period_end='$d 23:59:59'; $(cat loop_date_mysql_to_file.sql)" | mysql -N -u'USER' -p'PASSWORD' -h'127.0.0.1' DATABASE >> script_leo.csv

  d=$(date -I -d "$d + 1 day")
done
