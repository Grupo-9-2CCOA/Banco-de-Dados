# Banco de Dados - Doces com Amor

Scripts MySQL utilizados pelo sistema de gerenciamento da doceria **Doces com Amor**.

## Tecnologia

- MySQL 8
- SQL

## Requisitos

Antes de executar os scripts, certifique-se de ter instalado:

- MySQL Server 8
- MySQL Workbench ou cliente de linha de comando

## Scripts

| Arquivo | Função |
| --- | --- |
| `doces_com_amor.sql` | Cria o banco, tabelas e relacionamentos |
| `usuario_banco.sql` | Cria o usuário utilizado pelo backend |
| `inserts.sql` | Adiciona dados para desenvolvimento e testes manuais |

## Executando

Execute os scripts nesta ordem:

```text
1. doces_com_amor.sql
2. usuario_banco.sql
3. inserts.sql (opcional)
```

Pelo terminal:

```bash
mysql -u root -p < doces_com_amor.sql
mysql -u root -p < usuario_banco.sql
mysql -u root -p doces_com_amor < inserts.sql
```

O backend utiliza, por padrão:

```text
Banco: doces_com_amor
Usuário: docescomamor
Porta: 3306
```

## Estrutura principal

O banco armazena:

- Clientes e seus endereços
- Pedidos e respectivos status
- Formas de pagamento e entrega
- Histórico das alterações dos pedidos

> O usuário e a senha dos scripts são destinados apenas ao ambiente local. Em outros ambientes, utilize credenciais seguras e não versione informações sensíveis.
