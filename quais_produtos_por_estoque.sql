SELECT 
    estoques.nome AS nome_do_estoque,
    produtos.sku AS sku_do_produto,
    produtos.nome AS nome_do_produto,
    ROUND(
        SUM(
            CASE 
                WHEN movimentacao_estoque.tipo_movimentacao = 'entrada' THEN item_movimentacao_estoque.quantidade
                WHEN movimentacao_estoque.tipo_movimentacao = 'saida' THEN -item_movimentacao_estoque.quantidade
                ELSE 0
            END
        ), 
        2
    ) AS quantidade_atual
FROM estoques
JOIN movimentacao_estoque 
    ON movimentacao_estoque.estoque_id = estoques.id
JOIN carregamento_movimentacao_estoque 
    ON carregamento_movimentacao_estoque.movimentacao_estoque_id = movimentacao_estoque.id
JOIN carregamentos 
    ON carregamentos.id = carregamento_movimentacao_estoque.carregamento_id
    AND carregamentos.status = 'finalizado'
JOIN item_movimentacao_estoque 
    ON item_movimentacao_estoque.movimentacao_estoque_id = movimentacao_estoque.id
JOIN produtos 
    ON produtos.id = item_movimentacao_estoque.produto_id
WHERE estoques.id = 1  -- <== Altere este valor para o ID do estoque desejado
GROUP BY 
    estoques.id, estoques.nome,
    produtos.id, produtos.nome
HAVING 
    quantidade_atual > 0
ORDER BY 
    produtos.nome;

