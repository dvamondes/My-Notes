- Verificar os tamanhos das tabelas no MySQL
<br>
```
SELECT table_name AS 'Tabelas', ROUND(((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024), 2) 'Tamanho' FROM information_schema.TABLES WHERE table_schema = '{nome_do_banco}';
```
