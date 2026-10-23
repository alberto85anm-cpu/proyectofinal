create table tab_categoria(
id_categoria bigserial primary key,
nombre_categoria varchar(50) not null unique,
tipo varchar(50) not null  check(tipo in ('REFACCION','SERVICIO','CONSUMIBLE','HERRAMIENTA')),
descripcion text,
created_at timestamptz not null default now(),
updated_at timestamptz not null default now()
);

COMMENT ON TABLE tab_categoria IS 'Catálogo de categorías para refacciones y servicios del taller.';
COMMENT ON COLUMN tab_categoria.tipo IS 'Clasificación macro del ítem (REFACCION, SERVICIO, CONSUMIBLE, HERRAMIENTA).';