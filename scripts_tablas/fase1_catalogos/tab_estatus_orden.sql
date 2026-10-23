CREATE TABLE tab_estatus_orden(
id_estatus_orden bigserial primary key,
codigo_estatus varchar(50) not null unique check(codigo_estatus=upper(codigo_estatus)),
nombre_estatus varchar(50) not null,
orden_secuencia int not null unique check(orden_secuencia>0) ,
es_final boolean not null defaul false,
color_hex varchar(7) not null check(color_hex ~ '^#[0-9A-Fa-f]{6}$'),
fecha_registro timestamptz not null default now(),
updated_at timestamptz not null default now()
);

COMMENT ON TABLE tab_estatus_orden IS 'Catálogo de estatus por los que pasa una orden de servicio (Kanban).';
COMMENT ON COLUMN tab_estatus_orden.codigo_estatus IS 'Identificador lógico en mayúsculas para usar en Java/React (ej. DIAGNOSTICO).';
COMMENT ON COLUMN tab_estatus_orden.nombre_estatus IS 'Nombre legible para mostrar en la interfaz de usuario (ej. En Diagnóstico).';
COMMENT ON COLUMN tab_estatus_orden.orden_secuencia IS 'Orden estricto del flujo. Valida que no se salten estados.';
COMMENT ON COLUMN tab_estatus_orden.es_final IS 'TRUE si es un estado terminal (CERRADO).';
COMMENT ON COLUMN tab_estatus_orden.color_hex IS 'Color en formato hexadecimal para el tablero Kanban en React.';