

create table tab_compania(
id_compania bigserial primary key,
nombre varchar(150) not null unique,
rfc varchar(13) unique,
direccion text ,
telefono varchar(20),
correo text CHECK (correo ~ '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'),
activo boolean not null default true,
created_at timestamptz  not null default now(),
updated_at timestamptz not null default now()
);

comment on table tab_compania is 'Empresas (personas morales) clientes del taller';
comment on column tab_compania.correo is 'correo electronico del contacto (formato validado)';
comment on column tab_compania.activo is 'TRUE = empresa activa convenio vigente';


