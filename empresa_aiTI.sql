CREATE DATABASE EmpresaTI;

USE EmpresaTI;

-- Tabela de Departamentos
CREATE TABLE Departamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    gerente_id INT,
    FOREIGN KEY (gerente_id) REFERENCES Funcionarios(id)
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento_id INT,
    data_admissao DATE,
    salario DECIMAL(10,2),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

-- Tabela de Histórico de Salários
CREATE TABLE Historico_Salarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    funcionario_id INT,
    data_alteracao DATE,
    salario_anterior DECIMAL(10,2),
    salario_novo DECIMAL(10,2),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(id)
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15)
);

-- Tabela de Projetos
CREATE TABLE Projetos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

-- Tabela de Tarefas
CREATE TABLE Tarefas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao TEXT,
    status ENUM('pendente', 'em progresso', 'concluída'),
    id_projeto INT,
    id_funcionario INT,
    FOREIGN KEY (id_projeto) REFERENCES Projetos(id),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id)
);

-- Tabela de Contratos
CREATE TABLE Contratos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    valor DECIMAL(15,2),
    data_inicio DATE,
    data_fim DATE,
    status ENUM('ativo', 'encerrado', 'pendente'),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);
