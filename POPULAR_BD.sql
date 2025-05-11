-- Usuários
INSERT INTO usuarios (nome, email, criado_em, atualizado_em) VALUES
('Ana Souza', 'ana.souza@example.com', '2025-05-11 19:09:44', '2025-05-11 19:09:44'),
('Carlos Lima', 'carlos.lima@example.com', '2025-05-11 19:09:44', '2025-05-11 19:09:44'),
('Mariana Oliveira', 'mariana.oliveira@example.com', '2025-05-11 19:09:44', '2025-05-11 19:09:44');

-- Estoques
INSERT INTO estoques (nome, descricao, endereco, criado_em, atualizado_em) VALUES
('Estoque Central São Paulo', 'Armazém principal para distribuição regional em SP.', 'Av. Paulista, 1000 - São Paulo, SP', '2025-05-11 19:11:00', '2025-05-11 19:11:00'),
('Centro de Logística Rio', 'Centro de estocagem e despacho no RJ.', 'Rua da Assembleia, 200 - Rio de Janeiro, RJ', '2025-05-11 19:11:00', '2025-05-11 19:11:00'),
('Depósito Curitiba', 'Depósito de suporte para a região Sul.', 'Rua XV de Novembro, 300 - Curitiba, PR', '2025-05-11 19:11:00', '2025-05-11 19:11:00');

-- Fornecedores
INSERT INTO fornecedores (cnpj, nome_fantasia, razao_social, inscricao_estadual, endereco, criado_em, atualizado_em) VALUES
('12.345.678/0001-90', 'Distribuidora Paulista', 'Distribuidora Paulista LTDA', '110042490114', 'Rua das Indústrias, 150 - São Paulo, SP', '2025-05-11 19:12:01', '2025-05-11 19:12:01'),
('98.765.432/0001-10', 'Comercial Rio', 'Comercial Rio Importação e Exportação SA', '206547390001', 'Av. Presidente Vargas, 1200 - Rio de Janeiro, RJ', '2025-05-11 19:12:01', '2025-05-11 19:12:01'),
('45.678.901/0001-55', 'Sul Logística', 'Sul Logística e Armazenagem LTDA', '304876123456', 'Rua Anita Garibaldi, 500 - Porto Alegre, RS', '2025-05-11 19:12:01', '2025-05-11 19:12:01'),
('23.456.789/0001-22', 'Minas Atacado', 'Minas Atacado de Alimentos ME', '102938475610', 'Av. Afonso Pena, 800 - Belo Horizonte, MG', '2025-05-11 19:12:01', '2025-05-11 19:12:01'),
('67.890.123/0001-33', 'Norte Distribuição', 'Norte Distribuição e Logística LTDA', '567890123456', 'Rua João Pessoa, 321 - Manaus, AM', '2025-05-11 19:12:01', '2025-05-11 19:12:01');

-- Produtos (15 produtos: 3 para cada fornecedor)
INSERT INTO produtos (fornecedor_id, sku, marca, nome, descricao, preco_unitario, unidade_medida, data_validade, criado_em, atualizado_em) VALUES
(1, 'PROD-1000', 'JBS', 'Leite Integral', 'Leite UHT integral de alta qualidade.', 35.02, 1.0, '2025-03-26', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(1, 'PROD-1001', 'Bunge', 'Arroz Tipo 1', 'Arroz branco tipo 1, grãos longos e selecionados.', 8.96, 1.0, '2025-02-24', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(1, 'PROD-1002', 'P&G', 'Café Torrado', 'Café tradicional torrado e moído, 500g.', 43.88, 1.0, '2025-04-29', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(2, 'PROD-1003', 'Pepsico', 'Molho de Tomate', 'Molho de tomate pronto, sem conservantes.', 31.01, 1.0, '2025-02-21', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(2, 'PROD-1004', 'P&G', 'Óleo de Soja', 'Óleo vegetal refinado de soja, 900ml.', 41.93, 1.0, '2025-04-23', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(2, 'PROD-1005', 'JBS', 'Feijão Carioca', 'Feijão tipo carioca, selecionado.', 35.38, 1.0, '2025-05-04', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(3, 'PROD-1006', 'BRF', 'Sabão em Pó', 'Detergente em pó para roupas, ação profunda.', 27.4, 1.0, '2025-03-13', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(3, 'PROD-1007', 'Danone', 'Água Mineral', 'Água mineral natural sem gás, garrafa 1.5L.', 19.1, 1.0, '2025-03-02', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(3, 'PROD-1008', 'Bunge', 'Refrigerante Cola', 'Bebida gaseificada sabor cola, 2L.', 20.8, 1.0, '2025-03-14', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(4, 'PROD-1009', 'JBS', 'Macarrão Espaguete', 'Massa de sêmola tipo espaguete.', 49.43, 1.0, '2025-02-06', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(4, 'PROD-1010', 'Pepsico', 'Manteiga com Sal', 'Manteiga tradicional com sal, 200g.', 7.12, 1.0, '2025-05-06', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(4, 'PROD-1011', 'JBS', 'Iogurte Natural', 'Iogurte natural integral, 170g.', 49.93, 1.0, '2025-05-10', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(5, 'PROD-1012', 'Danone', 'Biscoito Recheado', 'Biscoito sabor chocolate com recheio cremoso.', 30.31, 1.0, '2025-03-18', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(5, 'PROD-1013', 'Nestlé', 'Farinha de Trigo', 'Farinha de trigo tipo 1, enriquecida.', 38.36, 1.0, '2025-03-29', '2025-05-11 19:13:34', '2025-05-11 19:13:34'),
(5, 'PROD-1014', 'BRF', 'Achocolatado', 'Pó para preparo de bebida achocolatada.', 13.33, 1.0, '2025-02-02', '2025-05-11 19:13:34', '2025-05-11 19:13:34');

-- Movimentações de estoque
INSERT INTO movimentacao_estoque (estoque_id, usuario_id, tipo_movimentacao, status, criado_em) VALUES
(1, 1, 'saida', 'ativo', '2025-05-11 19:16:36'),
(2, 1, 'saida', 'ativo', '2025-05-11 19:16:36'),
(3, 1, 'saida', 'ativo', '2025-05-11 19:16:36'),
(1, 2, 'entrada', 'ativo', '2025-05-11 19:16:36'),
(2, 2, 'saida', 'ativo', '2025-05-11 19:16:36'),
(3, 2, 'saida', 'ativo', '2025-05-11 19:16:36'),
(1, 3, 'entrada', 'ativo', '2025-05-11 19:16:36'),
(2, 3, 'entrada', 'ativo', '2025-05-11 19:16:36'),
(3, 3, 'saida', 'ativo', '2025-05-11 19:16:36');

-- Itens de movimentação
INSERT INTO item_movimentacao_estoque (movimentacao_estoque_id, produto_id, quantidade) VALUES
(1, 1, 2.54),
(2, 5, 9.83),
(3, 9, 8.39),
(4, 10, 12.92),
(5, 13, 17.86),
(6, 2, 16.65),
(7, 5, 8.38),
(8, 7, 19.72),
(9, 10, 1.03);

-- Carregamentos
INSERT INTO carregamentos (usuario_id, status, data_estimada_consumacao, data_real_consumacao) VALUES
(1, 'em andamento', '2025-04-05', '2025-02-24'),
(2, 'em andamento', '2025-02-21', '2025-02-14'),
(3, 'em andamento', '2025-03-02', '2025-03-27'),
(1, 'em andamento', '2025-03-19', '2025-04-22');

-- Ligações entre carregamentos e movimentações
INSERT INTO carregamento_movimentacao_estoque (carregamento_id, movimentacao_estoque_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(1, 9);

