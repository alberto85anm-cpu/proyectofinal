

create table tab_sucursal(
id_sucursal bigserial primary key,
nombre varchar(100) not null unique,
direccion text not null,
telefono varchar(20),
activa boolean not null default true,
fecha_registro timestamptz not null default now(),
updated_at timestamptz not null default now()
);

--Indice para filtrar sucursales activas
CREATE INDEX idx_sucursal_activa on tab_sucursal(activa) where activa=TRUE;

COMMENT ON TABLE tab_sucursal is'Catalogo de sucursales del taller';
COMMENT ON TABLE tab_sucursal.activa is 'TRUE igual sucursal operativa, false= cerrada temporalmente';

