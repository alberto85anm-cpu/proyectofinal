-- Database: bdmotoram

-- DROP DATABASE IF EXISTS bdmotoram;

CREATE DATABASE bdmotoram
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Mexico.1252'
    LC_CTYPE = 'Spanish_Mexico.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE bdmotoram
    IS 'Base de datos transaccional para gestión de un moto servicio';