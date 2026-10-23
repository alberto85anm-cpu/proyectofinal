CREATE TABLE tab_rol(

id_rol bigserial primary key,
rol varchar(50) not null unique check(rol=upper(rol)),
created_at timestamptz not null default now(),
updated_at timestamptz not null  default now()
);

comment on table tab_rol is 'Catalogo de roles de usuario del sistema';
comment on table tab_rol.rol is 'Nombre del rol en Mayúsculas (ADMIN, TÉCNICO,etc.)';

