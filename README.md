## 🏢 Empresa aiTI Database
Este é um projeto SQL para um banco de dados de uma empresa de tecnologia da informação. Ele gerencia funcionários, projetos, clientes, contratos e tarefas.

Desenvolvido utilizando SQL e gerado no Visual Studio Code (VS Code), garantindo uma estrutura bem organizada e compatível com diferentes sistemas de gerenciamento de banco de dados.
### 📌 Estrutura do Banco de Dados
O banco de dados contém as seguintes tabelas:

Departamentos: Informações sobre setores da empresa e seus gerentes.

Funcionários: Registro de colaboradores com cargo, departamento e salário.

Histórico de Salários: Rastreamento de alterações salariais.

Clientes: Detalhes sobre clientes da empresa.

Projetos: Informações sobre projetos em andamento e concluídos.

Tarefas: Atividades dentro dos projetos atribuídas aos funcionários.

Contratos: Dados sobre os contratos firmados com clientes.

🚀 Como utilizar
Clone o repositório:
Importe o script SQL no seu banco de dados favorito.
Execute consultas SQL para gerenciar e extrair informações dos dados.


## Consultas SQL Exemplares

### Todos os funcionários e seus departamentos
```sql
SELECT F.nome AS Funcionario, F.cargo, D.nome AS Departamento  
FROM Funcionarios F  
JOIN Departamentos D ON F.departamento_id = D.id;
```

### Projetos ativos e clientes
```sql
SELECT P.nome AS Projeto, P.descricao, C.nome AS Cliente  
FROM Projetos P  
JOIN Clientes C ON P.id_cliente = C.id  
WHERE P.data_fim > CURDATE();
```
### Histórico salarial de um funcionário específico
```sql
SELECT F.nome, H.salario_anterior, H.salario_novo, H.data_alteracao  
FROM Historico_Salarios H  
JOIN Funcionarios F ON H.funcionario_id = F.id  
WHERE F.nome = 'Carlos Souza'  
ORDER BY H.data_alteracao DESC;
```


### Contribuições
Se quiser contribuir com melhorias, envie um Pull Request! 😉
