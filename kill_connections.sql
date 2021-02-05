-- Kill all connections to db except current one
SELECT pid, 
       pg_terminate_backend(pid) 
FROM pg_stat_activity 
WHERE --datname = current_database() 
datname = 'adventureworks2012'
AND pid <> pg_backend_pid();