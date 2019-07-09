USE GoodBeer;

insert into Fecha values(1001,"01-07-2019");
insert into Fecha values(1002,"01-09-2019");
insert into Fecha values(1003,"01-11-2019");
insert into Fecha values(1004,"01-01-2020");
insert into Fecha values(1005,"01-03-2020");

insert into Sabor Values(2001,'Calabaza y Vainilla','descripcion');
insert into Sabor Values(2002,'Papaya','descripcion');
insert into Sabor Values(2003,'Miel','descripcion');
insert into Sabor Values(2004,'Frutos Rojos','descripcion');
insert into Sabor Values(2005,'Frambuesa','descripcion');

insert into negocio values (3001,122553248,'Distribuidora Santa Maria','Av. Domingo Santa Maria 2595',227374486);
insert into negocio values (3002,196873542,'Botilleria Tito soto','Jose miguel infante 5600',940639516);
insert into negocio Values (3003,189670578,'La blanquita','Miraflores 5886',978395787);
insert into negocio Values (3004,156947464,'Don rafa','Los acasios 1555',27654789);
insert into negocio Values (3005,159583577,'El faro','Los aramos 1578',938583898);

insert into Caducidad Values(4001,'01-07-2019','descripcion');
insert into Caducidad Values(4002,'01-12-2019','descripcion');
insert into Caducidad Values(4003,'01-06-2020','descripcion');
insert into Caducidad Values(4004,'01-12-2020','descripcion');
insert into Caducidad Values(4005,'No Vence','descripcion');

insert into Empleado Values(5001,196060984,'Daniel Sandoval',' Av. Apostal Santiago2044',95963987,"00:00","00:00");
insert into Empleado Values(5002,194039485,'Julio Sandoval ','las margaritas 3020',63075875,"00:00","00:00");
insert into Empleado Values(5003,162959487,'Marco henriquez',' Baquedano3333',39204857,"00:00","00:00");
insert into Empleado Values(5004,175039597,'Manuel Sepulveda',' Los placeres 2567',38925476,"00:00","00:00");
insert into Empleado Values(5005,190384759,'Boris Aguilera',' Platanos 3210',74037596,"00:00","00:00");

insert into Tiempofabricacion values(6001,"24 dias",'descripcion');
insert into Tiempofabricacion values(6002,"25 dias",'descripcion');
insert into Tiempofabricacion values(6003,"26 dias",'descripcion');
insert into Tiempofabricacion values(6004,"27 dias",'descripcion');
insert into Tiempofabricacion values(6005,"28 dias",'descripcion');

INSERT INTO Cerveza VALUES(7001,"Pilsen",1300,2001,4001);
insert into Cerveza Values(7002,"Brown Ale",1800,2002,4002);
insert into Cerveza Values(7003,"Porter",1500,2003,4003);
insert into Cerveza Values(7004,"Amber",1500,2004,4004);
insert into Cerveza Values(7005,"Pale Ale",1600,2005,4002);

insert into Sedistribuye Values(8001,'descripcion',20000,7001,3001,1001);
insert into Sedistribuye Values(8002,'descripcion',18000,7002,3002,1002);
insert into Sedistribuye Values(8003,'descripcion',16000,7003,3003,1003);
insert into Sedistribuye Values(8004,'descripcion',19000,7004,3004,1004);
insert into Sedistribuye Values(8005,'descripcion',17000,7005,3005,1005);

insert into MateriaPrima Values(9001,'Agua','liquido','descripcion',2500,4001);
insert into MateriaPrima Values(9002,'Lupulo','solido','descripcion',2600,4002);
insert into MateriaPrima Values(9003,'Cebada','solido','descripcion',3200,4003);
insert into MateriaPrima Values(9004,'Levadura','solido','descripcion',3100,4004);
insert into MateriaPrima Values(9005,'Botellas','solido','descripcion',1500,4005);

insert into Compone Values(10001,50,'descripcion',7001,9001);
insert into Compone Values(10002,30,'descripcion',7002,9002);
insert into Compone Values(10003,20,'descripcion',7003,9003);
insert into Compone Values(10004,12,'descripcion',7004,9004);
insert into Compone Values(10005,6,'descripcion',7005,9005);

insert into Proveedor values(11001,"Daniel Rojas",113984759,"Alameda 4033",200,958217482,9001,2500);
insert into Proveedor values(11002,"Francisco Araya",113984759,"Baquedano 423",300,27381938,9002,3500);
insert into Proveedor values(11003,"Alejandro Cortes",113984759,"Los Heroes 332",400,987796572,9003,4000);
insert into Proveedor values(11004,"Roberto Dias",113984759,"San Joaquin 921",500,927134325,9004,5100);
insert into Proveedor values(11005,"Cristian Gonzalez ",105890379,"San Diego 2050",250,965728813,9005,3400);

insert into Crea values(12001,'descripcion',7001,5001,6001);
insert into Crea values(12002,'descripcion',7002,5002,6002);
insert into Crea values(12003,'descripcion',7003,5003,6003);
insert into Crea values(12004,'descripcion',7004,5004,6004);
insert into Crea values(12005,'descripcion',7005,5005,6005);






