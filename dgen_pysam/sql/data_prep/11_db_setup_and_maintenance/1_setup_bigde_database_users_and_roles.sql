﻿CREATE USER bsigrin WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'bsigrin';
CREATE USER wcole WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'wcole';
CREATE USER jduckwor WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'jduckwor';
CREATE USER mgleason WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'mgleason';
CREATE USER cdong WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'cdong';
CREATE USER hlewis WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'hlewis';
CREATE USER test WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'test';
CREATE USER pgagnon WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'pgagnon';
CREATE USER pdas WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'pdas';
CREATE USER kmccabe WITH NOCREATEDB NOCREATEROLE NOCREATEUSER INHERIT CONNECTION LIMIT 20 PASSWORD 'kmccabe';

CREATE ROLE "diffusion-admins" with CREATEDB CREATEUSER LOGIN NOINHERIT CREATEROLE;
CREATE ROLE "diffusion-schema-writers" NOCREATEDB NOCREATEUSER NOLOGIN NOCREATEROLE;
GRANT CREATE ON database "dgen_db_fy16q1_tc_extensions" to "diffusion-schema-writers" ;
CREATE ROLE "diffusion-writers" NOCREATEDB NOCREATEUSER NOLOGIN NOCREATEROLE;
CREATE ROLE "diffusion-intermediate" NOCREATEDB NOCREATEUSER NOLOGIN NOCREATEROLE NOINHERIT;

ALTER GROUP "diffusion-intermediate" ADD USER "diffusion-writers";
ALTER GROUP "diffusion-schema-writers" ADD user "diffusion-intermediate";
GRANT CREATE ON database dgen_db to "diffusion-schema-writers";

ALTER GROUP "diffusion-writers" ADD user bsigrin;
ALTER GROUP "diffusion-writers" ADD user wcole;
ALTER GROUP "diffusion-writers" ADD user jduckwor;
ALTER GROUP "diffusion-writers" ADD user mgleason;
ALTER GROUP "diffusion-writers" ADD user cdong;
ALTER GROUP "diffusion-writers" ADD user hlewis;
ALTER GROUP "diffusion-writers" ADD user pgagnon;
ALTER GROUP "diffusion-writers" ADD user pdas;
ALTER GROUP "diffusion-writers" ADD user kmccabe;



ALTER GROUP "diffusion-admins" ADD user jduckwor;
ALTER GROUP "diffusion-admins" ADD user bsigrin;


