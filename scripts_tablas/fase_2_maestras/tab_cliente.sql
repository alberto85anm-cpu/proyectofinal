create table tab_cliente(
id_cliente bigserial  primary key,
usuario_id bigint not null,
compania_id bigint,
nombre varchar(100) not null,
ap_p varchar(100) not null,
ap_m varchar(100),
numero_identificacion varchar(50) not null unique,
fecha_nacimiento date,
direccion text,
correo text CHECK (correo ~ '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'),
telefono varchar(20),
created_at timestamptz not null default now(),
updated_at timestamptz not null default now(),
constraint fk_cliente_usuario foreign key(usuario_id) references tab_usuario(id_usuario),
constraint fk_cliente_compania foreign key(compania_id) references tab_compania(id_compania)
 );

 comment on table tab_cliente is 'El cliente dueño de la moto';
 comment on column tab_cliente.compania_id is 'Empresa a la que pertenece si es flotilla';
 comment on column tab_cliente.numero_identificacion is 'INE,PASAPORTE RFC';