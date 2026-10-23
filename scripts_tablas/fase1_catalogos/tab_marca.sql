create table tab_marca(
id_marca bigserial primary key,
nombre varchar(100) not null unique,
pais_origen varchar(50),
created_at timestamptz not null default now(),
updated_at timestamptz not null default now()
);

COMMENT ON TABLE  tab_marca                  IS 'Catálogo de marcas de motocicletas que maneja el taller.';
COMMENT ON COLUMN tab_marca.nombre           IS 'Nombre comercial de la marca (Honda, Yamaha, etc.).';
COMMENT ON COLUMN tab_marca.pais_origen      IS 'País de origen de la marca (opcional, para reportes).';