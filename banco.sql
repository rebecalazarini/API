--Criação do Banco de dados
CREATE DATABASE EscritorioEngenhariaCivil;
USE EscritorioEngenhariaCivil;

--Criação da tabela de Clientes 
CREATE TABLE  Clientes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome  VARCHAR(100) NOT NULL,
    Email VARCHAR (100 NOT NULL,
    Telefone VARCHAR(15),
    Endereço TEXT,
    Nascimento VARCHAR (15) NOT NULL
);

--CRIAÇÃO DA TABELA DE ENGENHEIROS
 CREATE TABLE Engenheiros (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR (100) NOT NULL,
    Telefone VARCHAR (15),
    Cargo VARCHAR (15)
    Salario VARCHAR (20)
    Projeto INT DEFAULT 0
 );

 --CRIAÇÃO DE TABELA DE VENDAS
 CREATE TABLE Vendas (
    VendasId INT AUTO_INCREMENT PRIMARY KEY
    ClientesId INT,
    DataVenda DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ClientesId) REFERENCES Clientes(ClientesId)
 );

 --CRIAÇÃO DA TABELA DE iTENS VEDAS
 CREATE TABLE ItensVenda(
    IntemVendaId INT AUTO_INCREMENT PRIMARY KEY,
    VendaId INT,
    ProjetosId INT,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL (10, 2) NOT NULL,
    FOREIGN KEY (Vendaid) REFERENCES Venda (Vendaid),
    FOREIGN KEY (Projetosid) REFERENCES Projetos(Projetosid)

 );

 --Inserção de dados na tebela Clientes
 INSERT INTO Clientes (Nome, Email, Telefone, Endereco) VALUES
 ('João da Silva', 'joao.silva@example.com', '1234-5678', 'Rua A, 123' ),
 ('Maria Oliveira', 'maria.oliveira@example.com', '8765-4321', 'Avenida B, 456'),
 ('Carlos Souza', 'carlos.souza@example.com', '2345-6789', 'Rua C, 789'),
 ('Ana Lima', 'ana.lima@example.com', '3456-7890', 'Avenida D, 101' ),
 ('Felipe Costa', 'felipe.costa@example.com', '4567-8901', 'Rua E, 202' );

--Inserção de dados na tebela  de Produtos
 INSERT INTO Projetos (Nome, Engenheiro, Preco) VALUES
 ('Projeto Casa', 'Igor Silva', '4989.91' ),
 ('Edificio pedreira', 'Robson Souza', '56.129'),
 ('Condominio Santana', 'Gabriela Hernandes', '78.299.90'),
 ('Ponte Vermelha', 'Lucas Paiva', '90.464.87'),
 ('Estrada das Águas', 'Marcos Rodrigues', '800.399.99');

--Inserção de dados na tebela de Vendas
 INSERT INTO Vendas (Clienteid, DataVenda) VALUES
 (1, '2024-08-25 07:30:00'),
 (2, '2024-08-26 09:15:00'),
 (3, '2024-08-27 13:23:00'),
 (4, '2024-08-27 16:09:00'),
 (5, '2024-08-28 10:40:00'),

--Inserção de dados na tebela de ItensVendas
 INSERT INTO Vendas (Clienteid, ProjetosId, Quantidade, PrecoUnitario) VALUES
 (1, 1, 1, 4989.91),
 (1, 2, 2, 56.129),
 (2, 3, 1, 78.299.90),
 (2, 4, 1, 90.464.87),
 (3, 5, 1, 800.399.99),
 (4, 2, 3, 129.99),
 (4, 4, 1, 90.464.87),
 (5, 3, 1, 56.129),
 (5, 5, 2, 800.399.99
 );
 
