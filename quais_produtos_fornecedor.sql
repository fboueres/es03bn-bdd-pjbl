SELECT 
    fornecedores.id AS id_do_fornecedor,
    fornecedores.nome_fantasia AS nome_do_fornecedor,
    ROUND(
        SUM(
            CASE 
                WHEN movimentacao_estoque.tipo_movimentacao = 'entrada' THEN item_movimentacao_estoque.quantidade
                WHEN movimentacao_estoque.tipo_movimentacao = 'saida' THEN -item_movimentacao_estoque.quantidade
                ELSE 0
            END
        ), 
        2
    ) AS quantidade_total_em_estoque
FROM fornecedores
JOIN produtos 
    ON produtos.fornecedor_id = fornecedores.id
JOIN item_movimentacao_estoque 
    ON item_movimentacao_estoque.produto_id = produtos.id
JOIN movimentacao_estoque 
    ON movimentacao_estoque.id = item_movimentacao_estoque.movimentacao_estoque_id
JOIN carregamento_movimentacao_estoque 
    ON carregamento_movimentacao_estoque.movimentacao_estoque_id = movimentacao_estoque.id
JOIN carregamentos 
    ON carregamentos.id = carregamento_movimentacao_estoque.carregamento_id
    AND carregamentos.status = 'finalizado'
GROUP BY 
    fornecedores.id, fornecedores.nome_fantasia
HAVING 
    quantidade_total_em_estoque > 0
ORDER BY 
    quantidade_total_em_estoque DESC;

