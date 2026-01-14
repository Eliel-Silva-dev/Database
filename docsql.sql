update produtos set nome = "agua mineral" where codigo = 8;

update produtos set nome = "agua mineral", preco = 8.7 where codigo = 8;

update produtos set preco = preco + 1 where codigo in (6,7,8);

delete from produtos where codigo = 5;

delete from produtos where preco < 5.1;

delete from produtos where preco is null;

select nome, preco from produtos where codigo = 15;

select nome, preco from produtos where codigo in (15,16,17);

select nome, preco from produtos where codigo not in (15,16,17);

select codigo, nome, preco from produtos
where preco between 3.2 and 6.7;

select codigo, nome, preco from produtos
where nome like "pão";

select codigo, nome, preco, preco + 1 as presco_acrescimo;

select codigo, nome, preco from produtos
order by preco desc, nome asc;

select sum(quantidade) from vendas 
where codigo_produto = '100'; 

select data_venda from vendas group by data_venda;

















