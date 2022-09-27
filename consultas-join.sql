
--EJERCICIO 26 SETIEMBRE
-- Pregunta 1
select clients.id as id_cliente, clients.first_name as nombre, clients.last_name as apellido, clients.email as email, accounts.account_no as cuenta, accounts.balance as saldo from clients left join accounts on clients.id = accounts.client_id; 
-- Pregunta 2
select accounts.account_no as cuenta, accounts.client_id as id_cliente, account_types.name from accounts inner join account_types on accounts.type = account_types.id;

-- Pregunta 3
select transactions.id as transaccion, transactions.amount as monto, transactions_types.name as "tipo de transaccion" from transactions left join transactions_types on transactions.transaction_type = transactions_types.id; 

-- Pregunta 4 

select transactions.id as transaccion, transactions.amount as monto, transactions_types.name as "tipo de transaccion" from transactions right join transactions_types on transactions.transaction_type = transactions_types.id;


-- Pregunta 5

create view  v_clients_accounts as select clients.id as id_cliente, clients.first_name as nombre, clients.last_name as apellido, clients.email as email, accounts.account_no as cuenta, accounts.balance as saldo from clients left join accounts on clients.id = accounts.client_id;

create view v_accounts_types as select accounts.account_no as cuenta, accounts.client_id as id_cliente, account_types.name from accounts inner join account_types on accounts.type = account_types.id;

create view v_transactions_detail as select transactions.id as transaccion, transactions.amount as monto, transactions_types.name as "tipo de transaccion" from transactions left join transactions_types on transactions.transaction_type = transactions_types.id;

create view v_transations_types_detail as select transactions.id as transaccion, transactions.amount as monto, transactions_types.name as "tipo de transaccion" from transactions right join transactions_types on transactions.transaction_type = transactions_types.id;
