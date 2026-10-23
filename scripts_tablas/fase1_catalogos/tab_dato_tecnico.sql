CREATE TABLE tab_dato_tecnico(
id_dato_tecnico bigserial primary key,
material varchar(100) not null,
dimensiones varchar(100) check(dimensiones is null or length(trim(dimensiones))>0) ,
peso numeric(8,2) check(peso is null or peso>=0),
created_at timestamptz not null default now(),
updated_at timestamptz not null default now()
);

COMMENT ON TABLE  tab_dato_tecnico              IS 'Especificaciones técnicas de refacciones y partes.';
COMMENT ON COLUMN tab_dato_tecnico.material     IS 'Material principal de la pieza (acero, aluminio, plástico, etc.).';
COMMENT ON COLUMN tab_dato_tecnico.dimensiones  IS 'Dimensiones en formato libre (ej. 120x80x15 mm).';
COMMENT ON COLUMN tab_dato_tecnico.peso         IS 'Peso de la pieza en kilogramos.';