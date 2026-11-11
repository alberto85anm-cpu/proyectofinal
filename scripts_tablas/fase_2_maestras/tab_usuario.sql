create table tab_usuario(
id_usuario bigserial primary key,
username varchar(50) not null unique, 
rol_id bigint not null,
sucursal_id bigint not null,
compania_id bigint ,
nombre varchar(100) not null,
ap_p varchar(100) not null,
ap_m varchar(100),
contrasenia varchar(255) not null,
fecha_ingreso date not null,
activo boolean not null default true,
created_at timestamptz not null default now(),
updated_at timestamptz not null default now(),
constraint fk_rol foreign key(rol_id) references tab_rol(id_rol),
constraint fk_sucursal foreign key(sucursal_id) references tab_sucursal(id_sucursal),
constraint fk_compania foreign key (compania_id) references tab_compania(id_compania)
);

comment on table tab_usuario is 'Empleados del taller que usan el sistema (mecánicos, recepcionistas, gerentes)';
comment on column tab_usuario.compania_id is 'Empresa a la que pertenece si es externo';
comment on column tab_usuario.activo is 'Estado laboral actual';
COMMENT ON COLUMN tab_usuario.contrasenia IS 'Hash de la contraseña generado por Spring Security (BCrypt)';