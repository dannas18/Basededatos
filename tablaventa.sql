create table venta(
    id int(11) not null auto_increment,
    fec_venta date not null,
    Producto varchar(20) not null,
    Descripcion text(40) not null,
    Precio decimal(20) not null,
    constraint pk_venta primary key(id) 
);

