- Loop Line and split a tab-delimited
```
$ while IFS=$'\t' read text1 text2 text3; do echo "$text3"; done < file.csv
```
