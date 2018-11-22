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