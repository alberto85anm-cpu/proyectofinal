CREATE TABLE tab_proveedor(
id_proveedor bigserial primary key,
nombre varchar(150) not null unique,
contacto varchar(100) ,
direccion text,
email varchar(100) unique not null check(email ~ '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'),
telefono varchar (20) check(telefono ~'^[0-9-]+$'),
activo boolean not null default true,
created_at timestamptz not null default now(),
updated_at timestamptz not null default now()
);

COMMENT ON TABLE  tab_proveedor          IS 'Catálogo de proveedores de refacciones y servicios externos.';
COMMENT ON COLUMN tab_proveedor.email    IS 'Correo electrónico de contacto (formato validado).';
COMMENT ON COLUMN tab_proveedor.activo   IS 'TRUE = proveedor habilitado para compras.';

create index idx_proveedor_activo on tab_proveedor(activo) where activo =TRUE;