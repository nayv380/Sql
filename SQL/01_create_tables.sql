-- Criação da tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY IDENTITY(1,1),
    NomeProduto VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL
);

-- Criação da tabela Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY IDENTITY(1,1),
    NomeFornecedor VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20)
);

-- Criação da tabela Estoque
CREATE TABLE Estoque (
    EstoqueID INT PRIMARY KEY IDENTITY(1,1),
    ProdutoID INT NOT NULL,
    FornecedorID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataEntrada DATE NOT NULL,
    Lote VARCHAR(50),
    CONSTRAINT FK_Estoque_Produto FOREIGN KEY (ProdutoID)
        REFERENCES Produtos(ProdutoID),
    CONSTRAINT FK_Estoque_Fornecedor FOREIGN KEY (FornecedorID)
        REFERENCES Fornecedores(FornecedorID)
);
