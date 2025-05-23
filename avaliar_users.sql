SELECT 
    usuarios.nome AS nome_do_usuario,
    COUNT(DISTINCT movimentacao_estoque.id) AS quantidade_de_movimentacoes_criadas,
    COUNT(DISTINCT carregamentos.id) AS quantidade_de_carregamentos_criados
FROM usuarios
LEFT JOIN movimentacao_estoque 
    ON movimentacao_estoque.usuario_id = usuarios.id
    AND movimentacao_estoque.criado_em >= '2024-01-01'
    AND movimentacao_estoque.criado_em < '2025-01-01'
LEFT JOIN carregamentos 
    ON carregamentos.usuario_id = usuarios.id
    AND carregamentos.data_estimada_consumacao >= '2024-01-01'
    AND carregamentos.data_estimada_consumacao < '2025-01-01'
GROUP BY usuarios.id, usuarios.nome
ORDER BY usuarios.nome;

