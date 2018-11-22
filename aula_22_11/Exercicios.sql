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
 
CREATE TABLE IF NOT EXISTS `mydb`.`PESSOA` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(2) NOT NULL,
  `cidade_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_PESSOA_CIDADE`
    FOREIGN KEY (`cidade_id`)
    REFERENCES `mydb`.`CIDADE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


