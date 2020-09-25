create database funcoes;
use funcoes;

create table produtos_estoque (
id int not null auto_increment,
nome varchar(30),
descricao text,
pagamento enum ('cartao', 'dinheiro', 'cheque'),
quantidade int UNSIGNED,
#5 numéros ao todo, com dois depois da virugula
preco decimal(5,2),
cidade varchar(30),
data date
);

alter table produtos_estoque add column marca VARCHAR(30) after preco;

select * from produtos;

