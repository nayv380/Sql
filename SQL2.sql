-- Criar a tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,      -- Identificador único
    NomeProduto VARCHAR(100) NOT NULL,  -- Nome do produto
    Quantidade INT NOT NULL,        -- Quantidade disponível
    Preco DECIMAL(10, 2) NOT NULL  -- Preço do produto
);

-- Inserir três registros na tabela Produtos
INSERT INTO Produtos (ProdutoID, NomeProduto, Quantidade, Preco)
VALUES
(1, 'Notebook', 10, 3500.00),
(2, 'Teclado', 25, 150.50),
(3, 'Mouse', 40, 75.90);
