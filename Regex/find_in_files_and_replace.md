- Find in files and replace string
<br>
```
$ grep -rl 'AAAAAAAAAA' ./ | xargs sed -i 's/AAAAAAAAAA/BBBBBBBBBB/g'
```
