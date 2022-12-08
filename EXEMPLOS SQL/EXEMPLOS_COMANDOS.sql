alter table campo11 add primary key(campo11);

alter table teste drop CAMPO1;
alter table teste add CAMPO1 tinyint(2) unsigned not null;
alter table teste add primary key (CAMPO1);

show tables; -- mostra todas as tabelas do banco

desc teste; -- mostra campos da tabelas

drop database revenda; -- deleta o banco de dados
drop table teste; -- deleta a tabela
truncate table teste; -- limpa tabela

INSERT INTO `devs2blu`.`funcionario` (`CODIGO`, `NOME_COMPLETO`, `IDADE`, `DATA_NASC`, `CPF`, `CNPJ`, `RUA`, `NUMERO`, `COMPLEMENTO`, `CEP`, `CIDADE`, `ESTADO`, `DATA_CADASTRO`, `ULTIMA_ATUALIZ_CAD`, `SEXO`, `RELIGIAO`, `COR`, `QI`, `TIPO_SANGUINEO`, `DOADOR_ORGAO`, `PASSAGEM_POLICIA`, `GRAU_ENSINO`, `USUAR_ATIV_INATIV`) VALUES ('198', 'JAMES', '29', '2022-10-28', '05758966488', '063464646', 'RUA JOINIVILLE', '33', 'LOJA 2', '89045875', 'ITAJAÍ', 'SANTA CATARINA', '2005-10-18', '2022-10-26', 'MASCULINO', 'CATÓLICO', 'NEGRO', '98', 'O-', '1', '0', '1 GRAU', '1');


SELECT CAMPO, TABELA.* FROM TABELA
WHERE CAMPO = 'Buenos Aires';


SELECT district, address.* FROM address
WHERE district = 'Buenos Aires';

SELECT * FROM address
WHERE district <>  'California';

SELECT * FROM actor 
WHERE first_name LIKE 'A%';

SELECT * FROM actor
WHERE last_name LIKE '%CAGE%';

SELECT * FROM address
WHERE phone LIKE '7058%';

SELECT COUNT(1), address.* FROM address
WHERE phone LIKE '_6%';

SELECT COUNT(1) AS TOTAL FROM address;

SELECT distinct(district), address.* FROM address;

SELECT * FROM film
WHERE film_id between 150 AND 170;

SELECT * FROM address
WHERE district = 'BUENOS AIRES' 
ORDER BY address_id limit 0,5;

SELECT MAX(address_id) FROM address; -- TRÁS O MAIOR NUMERO DO CAMPO

SELECT MIN(address_id) FROM address; -- TRÁS O MENOR NUMERO DO CAMPO

SELECT AVG(address_id) FROM address; -- FAZ A MÉDIA NUMERO DO CAMPO


SELECT * FROM actor;

UPDATE ACTOR SET LAST_UPDATE = '2022-10-28 18:30:33';

insert into actor (first_name, last_name)
values ('Pedro', 'jose');

insert into actor values (204, 'Pedro', 'Paulo', '2022-10-28 18:30:33');

insert into actor (first_name, last_name)
select first_name, last_name from actor
where actor_id = 1 




create table PESSOAS(
PERSON_ID int(5)UNSIGNED NOT NULL AUTO_INCREMENT,
LAST_NAME varchar(25)DEFAULT NULL,
FIRST_NAME varchar(100)DEFAULT NULL,
AGE INT(3)DEFAULT NULL,
PRIMARY KEY (PERSON_ID),
UNIQUE KEY PERSON_ID(PERSON_ID)
);

create table PEDIDOS(
ORDER_ID int(5)UNSIGNED NOT NULL AUTO_INCREMENT,
ORDER_NUMBER varchar(25)DEFAULT NULL,
PERSON_ID int(5)UNSIGNED NOT NULL,
PRIMARY KEY (ORDER_ID),
UNIQUE KEY ORDER_ID(ORDER_ID),
FOREIGN KEY (PERSON_ID) REFERENCES PESSOAS (PERSON_ID)
);

ALTER TABLE PEDIDOS ADD FOREIGN KEY (PERSON_ID) REFERENCES PESSOAS (PERSON_ID);



SELECT SUM(AMOUNT) AS AMOUNT, CUSTOMER_ID
FROM payment
group by customer_id;

SELECT SUM(AMOUNT) AS AMOUNT, CUSTOMER_ID
FROM payment
group by customer_id;

SELECT COUNT(1), ACTIVE
FROM customer
INNER JOIN address ON
	address.address_id = customer.address_id
WHERE address.district = 'CALIFORNIA'    
group by ACTIVE;












