-- Criando uma view para relatório de estoque
CREATE VIEW RelatorioEstoque AS
SELECT 
    E.EstoqueID,
    P.NomeProduto,
    P.Preco,
    F.NomeFornecedor,
    F.Telefone,
    E.Quantidade,
    E.DataEntrada,
    E.Lote
FROM Estoque E
LEFT JOIN Produtos P ON E.ProdutoID = P.ProdutoID
LEFT JOIN Fornecedores F ON E.FornecedorID = F.FornecedorID;

-- Consulta usando a view
SELECT * FROM RelatorioEstoque;
