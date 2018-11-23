-- MySQL Script generated by MySQL Workbench
-- 11/23/18 15:11:40
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Uf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Uf` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Uf_id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Cidade_Uf_idx` (`Uf_id` ASC),
  CONSTRAINT `fk_Cidade_Uf`
    FOREIGN KEY (`Uf_id`)
    REFERENCES `mydb`.`Uf` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereco` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `logradouro` VARCHAR(45) NOT NULL,
  `cep` INT NOT NULL,
  `Cidade_id` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Endereco_Cidade1_idx` (`Cidade_id` ASC),
  CONSTRAINT `fk_Endereco_Cidade1`
    FOREIGN KEY (`Cidade_id`)
    REFERENCES `mydb`.`Cidade` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recibo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recibo` (
  `numero` INT NOT NULL AUTO_INCREMENT,
  `cliente` INT NOT NULL,
  `prestador` INT NOT NULL,
  `valor` FLOAT NOT NULL,
  `dataEmissao` DATETIME NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_Recibo_Pessoa1_idx` (`cliente` ASC),
  INDEX `fk_Recibo_Pessoa2_idx` (`prestador` ASC),
  CONSTRAINT `fk_Recibo_Pessoa1`
    FOREIGN KEY (`cliente`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recibo_Pessoa2`
    FOREIGN KEY (`prestador`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pessoa_has_Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pessoa_has_Endereco` (
  `Pessoa_id` INT NOT NULL,
  `Endereco_id` INT NOT NULL,
  PRIMARY KEY (`Pessoa_id`, `Endereco_id`),
  INDEX `fk_Pessoa_has_Endereco_Endereco1_idx` (`Endereco_id` ASC),
  INDEX `fk_Pessoa_has_Endereco_Pessoa1_idx` (`Pessoa_id` ASC),
  CONSTRAINT `fk_Pessoa_has_Endereco_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_has_Endereco_Endereco1`
    FOREIGN KEY (`Endereco_id`)
    REFERENCES `mydb`.`Endereco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- 1  faça insert na tabela UF com todas as siglas dos estados do Brasil.
INSERT INTO UF(NOME) VALUES	('PR'), ('MR'), ('MG'), ('AC'), ('AL'), ('AP'), ('AM'), ('BA'), 
							('CE'), ('DF'), ('ES'), ('GO'), ('MA'), ('MT'), ('MS'), ('PA'), 
                            ('PB'), ('PE'), ('PI'), ('RJ'), ('RN'), ('RS'), ('RO'), ('RR'),
                            ('SC'), ('SP'), ('SE'), ('TO');

 /*2 insira as seguintes cidades:
Para o SC
* Chapecó
* Blumenau
* Joinville

Para o PR
* Curitiba
* Maringá
* Lunardeli
* Apucarana
* Santa fé
* São Miguel do Iguaçu
* Arapongas
* Ponta Grossa
* Jandaia do Sul

Para o SP
*Ribeirão Preto
*/
INSERT INTO CIDADE(NOME,UF_ID)
VALUES	('Ribeirão Preto',26),
		('Curitiba',1),
        ('Maringá',1),
        ('Lunardeli',1),
        ('Apucarana',1),
        ('Santa fé',1),
        ('São Miguel do Iguaçu',1),
        ('Arapongas',1),
        ('Ponta Grossa',1),
        ('Jandaia do Sul',1),
		('Chapecó',25),
        ('Blumenau',25),
        ('Joinville',25);


-- 3 Realize a remoção dos estados que não tem cidades
SELECT UF_ID FROM CIDADE;
DELETE FROM UF WHERE ID NOT IN (SELECT UF_ID FROM CIDADE);

-- 4 Insira novas cidades no estado de SP
INSERT INTO CIDADE(NOME , UF_ID) 
VALUES ('São paulo',26),('Santos',26);

/* 5 Realize a atualização do nome das cidades:
* Lunardeli para Lunardelli
* Jandaia do Sul para Jandaia
* Maringá para Cidade Canção
*/

update cidade set nome = 'Lunardelli' where nome = 'Lunardeli';
update cidade set nome = 'Jandaia' where nome = 'Jandaia do Sul';
update cidade set nome = 'Cidade Canção' where nome = 'Maringá';

/*6 - Faça um select que retorne o nome das cidades e seus respectivos estados. 
Ordene por estados e posteriomente pelo nome das cidades */
Select C.nome, U.nome
from Cidade as C inner join UF as U
on C.uf_id = U.id
order by U.nome and C.nome;

/*7 Retorne quantas cidades cada estado possui :) (não expliquei ainda)
dica: veja group by e count()*/
Select  count(U.nome) as Quantidade, U.nome
from Cidade as C inner join UF as U
on C.uf_id = U.id
group by U.id;

/*8 - Insira tres pessoas na base de dados.
 Cada uma destas pessoas deve ter dois enderecos (um comercial e outro residencial). 
 As cidades que devem ser usadas são do estado do PR (você escolhe).*/
desc Pessoa;
insert into Pessoa(nome)
values
('Marvin'),
('Massaru'),
('Tomizawa'); 


desc endereco;
select * from cidade;
insert into endereco(logradouro,cep,Cidade_id,tipo)
values
('Avenida rio grande do sul',87701020,2,'Comercial'),
('Avenida rio grande do norte',8770523,3,'Comercial'),
('Rua linda',87569020,4,'Comercial'),
('Bairro rico',87897020,2,'Residencial'),
('Rua perdida',87946020,6,'Residencial');

select * from endereco;
desc pessoa_has_endereco;
insert into pessoa_has_endereco(Pessoa_id,Endereco_id)
values 
(1,1),
(1,4),
(2,2),
(2,4),
(3,3),
(3,5);

/*9 -Insira duas pessoas na base de dados. Cada uma destas pessoas deve ter dois enderecos 
(um comercial e outro residencial). As cidades que devem ser usadas são do estado de SP (você escolhe).*/
desc pessoa;
insert into pessoa(nome)
values('Fuska'),('Maiko');

select * from cidade;
desc endereco;
insert into endereco(logradouro,cep,cidade_id,tipo)
values
('Av. Advogado Horácio Raccanello Filho',87701020,15,'Comercial'),
('Rua linda',85451020,14,'Residencial'),
('Avenida maravilhos',87232020,15,'Residencial');

select * from endereco;
desc pessoa_has_endereco;
insert into pessoa_has_endereco(Pessoa_id,Endereco_id)
values
(4,6),
(4,7),
(5,6),
(5,8);

/*10 - Insira duas pessoas na base de dados. Cada uma destas pessoas deve ter um endereco do tipo comercial.
 As cidades que devem ser usadas são do estado de SC (você escolhe).*/
 desc pessoa;
 insert into pessoa(nome)
 values 
 ('joão pedro'),
 ('adriano');

select * from cidade;
desc endereco;
insert into endereco(logradouro,cep,cidade_id,tipo)
values
('Rua maravilinda',88961020,11,'Comercial'),
('Avenida perdida',88965690,12,'Comercial');

select * from endereco;
insert into pessoa_has_endereco(Pessoa_id,Endereco_id)
values
(6,11),
(7,12);

/*11 - Faça um select que retorne o nome das pessoas e seus respectivos enderecos (com cidade e estado). 
Ordene por nome de pessoa, nome do estado e nome da cidade*/
desc endereco;
desc cidade;
desc uf;
desc pessoa_has_endereco;
select p.nome Nome_Pessoa, e.logradouro endereco, e.cep cep, e.tipo tipo, c.nome cidade, u.nome
from Pessoa as p inner join endereco as e inner join cidade as c inner join uf as u inner join pessoa_has_endereco as pe
on pe.pessoa_id = p.id and pe.endereco_id = e.id and e.cidade_id = c.id and c.Uf_id = u.id
order by p.nome and e.logradouro and c.nome;


-- 12 - remova todos as pessoas que tem endereço da cidade de Ribeirão Preto
desc endereco;
delete from pessoa 
where id = (select p.id from
						pessoa as p inner join endereco as e inner join pessoa_has_endereco as pe inner join cidade as c
                        where p.id = pe.pessoa_id and 
						pe.endereco_id = e.id and 
						e.cidade_id = c.id and 
						c.nome = 'Ribeirão Preto');
                        
-- 13 - Mude todos os endereços residenciais do sistema. Eles devem ter cep 00000000
desc endereco;
update endereco set cep = 00000000 where tipo = 'Residencial';

-- 14 - altere o nome da coluna prestador_fk para cliente_fk. 
desc recibo;
alter table recibo change prestador cliente_fk int(11);
