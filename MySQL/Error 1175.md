- Error: 1175 SQLSTATE: HY000 (ER_UPDATE_WITHOUT_KEY_IN_SAFE_MODE)
<br>
- Message: You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column
<br>
- I found that the easiest way to disable the safe mode is to execute this SQL statement first to disable safe update mode temporarily.
<br>
```
SET sql_safe_updates=0
```
