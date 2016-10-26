- Verificar os tamanhos das tabelas
```
SELECT table_name AS 'Tabelas', ROUND(((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024), 2) 'Tamanho' FROM information_schema.TABLES WHERE table_schema = '{nome_do_banco}';
```

- Verificar os tamanhos dos bancos
```
SELECT TABLE_SCHEMA 'Banco de Dados', ROUND(SUM(DATA_LENGTH + INDEX_LENGTH) / (1024 * 1024), 2) 'Tamanho (Mb)' FROM information_schema.TABLES WHERE ENGINE=('MyISAM' || 'InnoDB') GROUP BY TABLE_SCHEMA ORDER BY 2;
```
