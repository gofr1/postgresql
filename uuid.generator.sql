--ERROR Database error 42883: function uuid_generate_v4() does not exist
--HINT: No function matches the given name and argument types. You might need to add explicit type casts.

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

SELECT uuid_generate_v4(); -- Something like NEWID() in SQL Server

--* uuid_generate_v4
--* uuid
--* 1    80890df0-1896-40a4-93b5-50881e36593f

DROP EXTENSION IF EXISTS "uuid-ossp";

--! Extension will work in db where it was created