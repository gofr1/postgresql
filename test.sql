SELECT current_database();
    
--* current_database
--* name
--* 1    Test
SELECT version();
--* version
--* text
--* 1    PostgreSQL 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)...

SHOW config_file;
--* JSON with configurations

SELECT datname 
FROM pg_database
WHERE datistemplate = false;
--* datname
--* name
--* 1    postgres
--* 2    Test
--* 3    wideworldimporters
--* 4    adventureworksdw2012
--* 5    dvdrental