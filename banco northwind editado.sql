select*from products
select*from Employees
-- mostre as colunas nome do produto, preco e quantidade em estoque da tabela produtos
 select productid, productname, unitprice, unitsinstock from products

--mostra as bebidas do estoque
select*from products where categoryid=1


--mostrar clientes da argentina
select*from customers where country= 'argentina'


--mostrar todos os pedidos do cliente de codigo ANTON
select * from Orders where CustomerID = 'ANTON'


--mostrar os fornecedores da frança
select *from Suppliers where Country ='france'


--mostrar produtos com preço menor que 30
select * from Products where UnitPrice <30


--mostrar pedidos feitos na data de ontem 16/03/2023
select * from Orders where OrderDate ='14/02/2023'
 

--mostrar os pedidos do funcionário de código 2
select * from Orders where EmployeeID ='2'


--mostrar o pedido de numero 10250
select * from Orders where OrderID='10250'


--mostrar todos os itens do pedido de numero 10250
select * from [Order Details] where OrderID  ='10250'

-- criar um campo que calcule o subtotal dos produtos

select productname,unitprice,unitsinstock,(UnitPrice*unitsinstock) as 'subtotal' from Products

--observe a tabela de order detail
select*from [Order Details]

--criar um campo que calcule o subtotal dos intens do pedido
select *,(UnitPrice*quantity)as 'subtotal' from [Order Details]

--calcular os produtos com desconto de 10% 
select*, (unitprice*0.90) as 'Valor com desconto' from [Order Details]

SELECT *, ROUND(unitprice*0.90,2) as 'Valor com desconto' FROM [Order Details]


--criar um campo que calcule o subtotal dos intens do pedido

select*,(UnitPrice*quantity)as 'subtotal',
        (UnitPrice*quantity)* discount as 'desconto',
		(UnitPrice*quantity)* (1-discount) as 'Subtotal com desconto' from [order details]

--ver como seria o preço do produto com 4% de acrescimo 
 select productname,unitprice,(unitprice*1.04) as 'novopreco' from Products

 --mostrar pedidos de janeiro de 2023 
  select * from orders where OrderDate >='01/01/2023' and orderdate <='31/01/2023'

select * from orders where orderdate between '01/01/2023' and '31/01/2023'