-- Inserindo produtos
INSERT INTO Produtos (NomeProduto, Preco)
VALUES 
('Notebook', 3500.00),
('Mouse', 80.00),
('Teclado', 150.00);

-- Inserindo fornecedores
INSERT INTO Fornecedores (NomeFornecedor, Telefone)
VALUES 
('Tech Supply', '1234-5678'),
('Office Solutions', '9876-5432');

-- Inserindo no estoque
INSERT INTO Estoque (ProdutoID, FornecedorID, Quantidade, DataEntrada, Lote)
VALUES 
(1, 1, 10, '2025-11-25', 'L001'),
(2, 1, 50, '2025-11-26', 'L002'),
(3, 2, 30, '2025-11-27', 'L003');
