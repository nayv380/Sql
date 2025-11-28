-- Consulta completa simulando tabela única
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

-- Agrupando quantidade por fornecedor
SELECT 
    F.NomeFornecedor,
    SUM(E.Quantidade) AS TotalProdutos
FROM Estoque E
JOIN Fornecedores F ON E.FornecedorID = F.FornecedorID
GROUP BY F.NomeFornecedor;
