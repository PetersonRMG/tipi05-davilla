-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/04/2026 às 14:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_davilla`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int(11) NOT NULL,
  `nome_banner` varchar(30) NOT NULL,
  `foto_banner` varchar(50) NOT NULL,
  `status_banner` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `nome_banner`, `foto_banner`, `status_banner`) VALUES
(1, 'Vitrine de Páscoa', 'banner/vitrini-de-pascoa.png', 'ATIVO'),
(2, 'Bolos Sob Encomenda', 'banner/bolos-sob-encomenda.png', 'ATIVO'),
(3, 'Café da Tarde', 'banner/cafe-da-tarde.png', 'ATIVO'),
(4, 'Bolos por Encomenda', 'banner/bolos-por-encomenda.jpg', 'ATIVO'),
(5, 'Promoção Doces Finos', 'banner/promocao-doces-finos.jpg', 'ATIVO'),
(6, 'Chá da Tarde', 'banner/cha-da-tarde.jpg', 'ATIVO'),
(7, 'Kit Presente Especial', 'banner/kit-presente-especial.jpg', 'INATIVO'),
(8, 'Torta da Semana', 'banner/torta-da-semana.jpg', 'ATIVO'),
(9, 'Vitrine de Páscoa', 'banner/vitrini-de-pascoa.png', 'ATIVO'),
(10, 'Bolos Sob Encomenda', 'banner/bolos-sob-encomenda.png', 'ATIVO'),
(11, 'Café da Tarde', 'banner/cafe-da-tarde.png', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_categorias`
--

CREATE TABLE `tbl_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(30) NOT NULL,
  `descricao_categoria` text NOT NULL,
  `criado_em_categoria` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_categoria` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`id_categoria`, `nome_categoria`, `descricao_categoria`, `criado_em_categoria`, `atualizado_em_categoria`) VALUES
(1, 'Bolos', 'Bolos de vitrine e sob encomenda.', '2026-03-05 09:54:49', '2026-03-05 09:54:49'),
(2, 'Doces', 'Brogadeiros, trufas e doces finos.', '2026-03-05 09:55:20', '2026-03-05 09:55:20'),
(3, 'Bebidas Quentes', 'Café, capuccino e chás.', '2026-03-05 09:58:06', '2026-03-05 09:58:06'),
(4, 'Tortas', 'Tortas doces vendidas por fatia ou inteira', '2026-03-12 09:27:42', '2026-03-12 09:27:42'),
(5, 'Kits Presente', 'Kits especiais para presentear', '2026-03-12 09:28:30', '2026-03-12 09:28:30'),
(6, 'Bolos', 'Bolos de vitrine e sob encomenda.', '2026-03-20 08:38:39', '2026-03-20 08:38:39'),
(7, 'Doces', 'Brogadeiros, trufas e doces finos.', '2026-03-20 08:38:39', '2026-03-20 08:38:39'),
(8, 'Bebidas Quentes', 'Café, capuccino e chás.', '2026-03-20 08:38:39', '2026-03-20 08:38:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `tipo_cliente` varchar(2) NOT NULL,
  `cpf_cnpj_cliente` varchar(18) NOT NULL,
  `data_nasc_cliente` date NOT NULL,
  `endereco_cliente` varchar(40) NOT NULL,
  `numero_cliente` varchar(6) NOT NULL,
  `complemento_cliente` varchar(50) DEFAULT NULL,
  `bairro_cliente` varchar(50) NOT NULL,
  `cidade_cliente` varchar(40) NOT NULL,
  `uf_cliente` varchar(2) NOT NULL,
  `cep_cliente` varchar(9) NOT NULL,
  `email_cliente` varchar(80) NOT NULL,
  `senha_cliente` varchar(255) NOT NULL,
  `telefone_cliente` varchar(14) NOT NULL,
  `foto_cliente` varchar(50) NOT NULL,
  `status_cliente` varchar(10) NOT NULL DEFAULT 'ATIVO',
  `criado_em_cliente` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_cliente` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`id_cliente`, `nome_cliente`, `tipo_cliente`, `cpf_cnpj_cliente`, `data_nasc_cliente`, `endereco_cliente`, `numero_cliente`, `complemento_cliente`, `bairro_cliente`, `cidade_cliente`, `uf_cliente`, `cep_cliente`, `email_cliente`, `senha_cliente`, `telefone_cliente`, `foto_cliente`, `status_cliente`, `criado_em_cliente`, `atualizado_em_cliente`) VALUES
(1, 'Fernanda Oliveira', 'PF', '123.456.789-10', '1992-07-18', 'Rua Doce Mel', '85', 'Casa A', 'Vila Maria', 'São PAulo', 'SP', '02010-000', 'fernanda.oli@gmail.com', 'senha123', '(11)98765-8521', 'cliente/fernanda-oliveira.png', 'ATIVO', '2026-03-10 09:44:57', '2026-03-10 09:44:57'),
(2, 'Amanda Souza ', 'PF', '123.456.789.01', '1995-04-12', 'Rua Das Flores', '120', 'Casa', 'Centro', 'São Paulo', 'SP', '10100-000', 'amanda@gmail.com', '123456', '(11)988887777', 'cliente/amanda-souza.png', 'ATIVO', '2026-03-12 09:48:06', '2026-03-12 09:48:06'),
(3, 'Bruno Lima', 'PF', '234.657.890.12', '1992-08-21', 'Av. Paulista', '850', 'Apto 45', 'Bela Vista', 'São Paulo', 'SP', '13100-000', 'bruno@gmail.com', '123456', '(11)997776666', 'cliente/bruno-lima.png', 'ATIVO', '2026-03-12 09:50:55', '2026-03-12 09:50:55'),
(4, 'Camila Ferreira', 'PF', '345.678.901.23', '1998-02-10', 'Rua do Açucar', '56', 'Casa', 'Mooca', 'São Paulo', 'SP', '3120-000', 'camila@gmail.com', '123456', '(11)996665555', 'cliente/camila-ferreira.png', 'ATIVO', '2026-03-12 09:57:13', '2026-03-12 09:57:13'),
(5, 'Diego Martins', 'PF', '456.789.012.34', '1989-11-03', 'Rua do Café', '210', 'Casa', 'Tatuapé', 'São Paulo', 'SP', '3333-000', 'diego@gmail.com', '123456', '(11)994443333', 'cliente/diego-martins.png', 'ATIVO', '2026-03-12 10:01:07', '2026-03-12 10:01:07'),
(6, 'Elaine Rocha', 'PF', '567.890.123.45', '1990-06-17', 'Rua do Brigadeiro', '98', 'Apto 12', 'Santana', 'São Paulo', 'SP', '2020-000', 'elaine@gmail.com', '123456', '(11)993332222', 'cliente/elaine-rocha.png', 'ATIVO', '2026-03-12 10:04:30', '2026-03-12 10:04:30'),
(7, 'Felipe Nunes', 'PF', '678.901.234.56', '1987-09-25', 'Rua das Palmeiras', '333', 'Casa', 'Penha', 'São Paulo', 'SP', '36540-000', 'felipe@gmail.com', '123456', '(11)992221111', 'cliente/felipe-nunes.png', 'ATIVO', '2026-03-12 10:07:35', '2026-03-12 10:07:35'),
(8, 'Gabriela Costa', 'PF', '789.123.456.78', '1996-03-09', 'Rua Celso Garcia', '741', 'Apto 67', 'Brás', 'São Paulo', 'SP', '30150-000', 'gabriela@gmail.com', '123456', '(11)991110000', 'cliente/gabriela-costa.png', 'ATIVO', '2026-03-12 10:10:12', '2026-03-12 10:10:12'),
(9, 'Henrique Alves', 'PF', '890.123.456.78', '1993-02-01', 'Rua dos Sonhos', '150', 'Casa', 'Ipiranga', 'São Paulo', 'SP', '4210-000', 'henrique@gmail.com', '123456', '(11)990001111', 'cliente/henrique-alves.png', 'ATIVO', '2026-03-12 10:13:09', '2026-03-12 10:13:09'),
(10, 'Festa Feliz Eventos', 'PJ', '123.456.780.001.90', '2005-01-01', 'Rua dos Eventos', '500', 'Sala 3', 'Vila Mariana', 'São Paulo', 'SP', '41110-000', 'contato@festafeliz.com', '123456', '(11)33334444', 'cliente/festa-feliz-eventos.png', 'ATIVO', '2026-03-12 10:16:00', '2026-03-12 10:55:49'),
(11, 'Cafeteria Central', 'PJ', '98.765.432.1000.88', '2010-05-10', 'Av Central', '1000', 'Loja 2', 'República', 'São Paulo', 'SP', '10450-000', 'compras@cafecentral.com.br', '123456', '(11)44445555', 'cliente/cafeteria-central.png', 'INATIVO', '2026-03-12 10:51:44', '2026-03-12 10:51:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_contato`
--

CREATE TABLE `tbl_contato` (
  `id_contato` int(11) NOT NULL,
  `nome_contato` varchar(50) NOT NULL,
  `email_contato` varchar(80) NOT NULL,
  `telefone_contato` varchar(14) NOT NULL,
  `assunto_contato` varchar(30) NOT NULL,
  `mensagem_contato` text NOT NULL,
  `status_contato` varchar(10) NOT NULL DEFAULT 'ENVIADO',
  `criado_em_contato` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_contato` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_contato`
--

INSERT INTO `tbl_contato` (`id_contato`, `nome_contato`, `email_contato`, `telefone_contato`, `assunto_contato`, `mensagem_contato`, `status_contato`, `criado_em_contato`, `atualizado_em_contato`) VALUES
(1, 'Juliana Rocha', 'juliana.r@gmail.com', '(11)98888-1111', 'Encomenda', 'Quero um bolo de 20kg para um chá de bebê', 'ENVIADO', '2026-03-05 09:37:42', '2026-03-05 09:37:42'),
(2, 'Pedro Martins', 'pedro.m@gmail.com', '(11)97777-2222', 'Cardápio', 'Vocês tem opção sem lactose?', 'ENVIADO', '2026-03-05 09:44:22', '2026-03-05 09:44:22'),
(3, 'Carla Nunes', 'carla.n@gmail.com', '(11)96666-3333', 'Pagamento', 'Consigo pagar via PIX na entrega', 'ENVIADO', '2026-03-05 09:44:25', '2026-03-05 09:44:25'),
(4, 'Juliana Rocha', 'juliana.r@gmail.com', '(11)988881111', 'Encomenda', 'Gostaria de encomendar um bolo para 20 pessoas.', 'ENVIADO', '2026-03-12 11:13:25', '2026-03-12 11:13:25'),
(5, 'Pedro Martins', 'pedro@gmail.com', '(11)987772222', 'Cardápio', 'Vocês fazem bolo sem lactose', 'ENVIADO', '2026-03-12 11:16:38', '2026-03-12 11:16:38'),
(6, 'Carla Nunes', 'carla@gmail.com', '(11)986663333', 'Pagamento', 'Aceitam Pix e cartão na retirada', 'LIDO', '2026-03-12 11:17:53', '2026-03-12 11:17:53'),
(7, 'Lucas Almeida ', 'lucas@gmail.com', '(11)985554444', 'Orçamento', 'Qual o valor de 100 brigadeiros gourmet?', 'RESPONDIDO', '2026-03-12 11:19:38', '2026-03-12 11:19:38'),
(8, 'Renata Silva', 'renata@gmail.com', '(11)984445555', 'Entrega', 'Vocês entregam no bairro da mooca?', 'ENVIADO', '2026-03-12 11:21:00', '2026-03-12 11:21:00'),
(9, 'Juliana Rocha', 'juliana.r@gmail.com', '(11)98888-1111', 'Encomenda', 'Quero um bolo de 20kg para um chá de bebê', 'ENVIADO', '2026-03-20 08:38:39', '2026-03-20 08:38:39'),
(10, 'Pedro Martins', 'pedro.m@gmail.com', '(11)97777-2222', 'Cardápio', 'Vocês tem opção sem lactose?', 'ENVIADO', '2026-03-20 08:38:39', '2026-03-20 08:38:39'),
(11, 'Carla Nunes', 'carla.n@gmail.com', '(11)96666-3333', 'Pagamento', 'Consigo pagar via PIX na entrega', 'ENVIADO', '2026-03-20 08:38:39', '2026-03-20 08:38:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_controle_materia_prima`
--

CREATE TABLE `tbl_controle_materia_prima` (
  `id_controle` int(11) NOT NULL,
  `id_materia_prima` int(11) NOT NULL,
  `tipo_controle` varchar(7) NOT NULL,
  `qtde_controle` double(10,3) NOT NULL,
  `data_controle` datetime NOT NULL DEFAULT current_timestamp(),
  `obs_controle` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_controle_materia_prima`
--

INSERT INTO `tbl_controle_materia_prima` (`id_controle`, `id_materia_prima`, `tipo_controle`, `qtde_controle`, `data_controle`, `obs_controle`) VALUES
(1, 1, 'ENTRADA', 10.000, '2026-03-13 10:50:46', 'Compra semanal de farinha'),
(2, 2, 'ENTRADA', 8.000, '2026-03-13 10:52:10', 'Reposição de açúcar refinado'),
(3, 3, 'SAIDA', 2.500, '2026-03-13 10:53:18', 'Produção de ovos de páscoa'),
(4, 4, 'SAIDA', 12.000, '2026-03-13 10:53:55', 'Produção de brigadeiros'),
(5, 5, 'SAIDA', 8.000, '2026-03-13 10:54:29', 'Produção de recheios'),
(6, 6, 'ENTRADA', 5.000, '2026-03-13 10:55:20', 'Compra de morangos frescos'),
(7, 7, 'SAIDA', 30.000, '2026-03-13 10:55:57', 'Produção de bolos e tortas'),
(8, 8, 'SAIDA', 1.500, '2026-03-13 10:56:34', 'Consumo de preparo de cafés'),
(9, 9, 'ENTRADA', 20.000, '2026-03-13 10:57:14', 'Compra de embalagens'),
(10, 10, 'SAIDA', 3.000, '2026-03-13 10:57:58', 'Produção de massas e coberturas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_fornecedores`
--

CREATE TABLE `tbl_fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(50) NOT NULL,
  `representante_fornecedor` varchar(50) NOT NULL,
  `email_fornecedor` varchar(80) NOT NULL,
  `telefone_fornecedor` varchar(14) NOT NULL,
  `status_fornecedor` varchar(10) NOT NULL DEFAULT 'ATIVO',
  `criado_em_fornecedor` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_fonecedor` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_fornecedores`
--

INSERT INTO `tbl_fornecedores` (`id_fornecedor`, `nome_fornecedor`, `representante_fornecedor`, `email_fornecedor`, `telefone_fornecedor`, `status_fornecedor`, `criado_em_fornecedor`, `atualizado_em_fonecedor`) VALUES
(1, 'Doces Sabor Distribuidora', 'Marcos Lima', 'contato@docesabor.com.br', '(11)987654321', 'ATIVO', '2026-03-12 09:33:04', '2026-03-12 09:33:04'),
(2, 'Laticínios Serra Azul', 'Fernanda Rocha', 'vendas@serraazul.com.br', '(11)981234567', 'ATIVO', '2026-03-12 09:34:32', '2026-03-12 09:34:32'),
(3, 'Embala Festas LTDA', 'Carla Mendes', 'comercial@embalafestas.com.br', '(11)993456789', 'ATIVO', '2026-03-12 09:35:44', '2026-03-12 09:35:44'),
(4, 'Frutas Boa Colheita', 'Pedro Alves', 'pedidos@boacolheita.com.br', '(11)992345678', 'ATIVO', '2026-03-12 09:36:53', '2026-03-12 09:36:53'),
(5, 'Chocolates Premium Brasil', 'Julia Costa', 'suporte@cpbrasil.com.br', '(11)994567812', 'INATIVO', '2026-03-12 09:38:03', '2026-03-12 09:38:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_itens_venda`
--

CREATE TABLE `tbl_itens_venda` (
  `id_item` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor_unit_item` double(10,2) NOT NULL,
  `qtde_itens` double(10,2) NOT NULL,
  `status_item` varchar(10) NOT NULL,
  `atualizado_em_item` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_itens_venda`
--

INSERT INTO `tbl_itens_venda` (`id_item`, `id_venda`, `id_produto`, `valor_unit_item`, `qtde_itens`, `status_item`, `atualizado_em_item`) VALUES
(1, 1, 2, 23.00, 2.00, 'APROVADO', '2026-03-10 10:58:08'),
(2, 1, 3, 13.75, 1.00, 'APROVADO', '2026-03-10 11:00:56'),
(3, 1, 1, 18.00, 1.00, 'ATIVO', '2026-03-13 09:18:39'),
(4, 2, 4, 12.50, 1.00, 'ATIVO', '2026-03-13 09:22:34'),
(5, 3, 7, 19.90, 1.00, 'ATIVO', '2026-03-13 09:26:56'),
(6, 3, 8, 13.00, 1.00, 'ATIVO', '2026-03-13 09:27:27'),
(7, 3, 3, 13.75, 2.00, 'ATIVO', '2026-03-13 10:38:00'),
(8, 4, 9, 15.50, 1.00, 'ATIVO', '2026-03-13 10:40:18'),
(9, 5, 5, 14.00, 1.00, 'ATIVO', '2026-03-13 10:41:23'),
(10, 5, 7, 19.90, 1.00, 'ATIVO', '2026-03-13 10:41:55'),
(11, 5, 3, 13.75, 2.00, 'ATIVO', '2026-03-13 10:42:29'),
(12, 7, 8, 13.00, 3.00, 'ATIVO', '2026-03-13 10:45:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_materia_prima`
--

CREATE TABLE `tbl_materia_prima` (
  `id_materia_prima` int(11) NOT NULL,
  `nome_materia_prima` varchar(30) NOT NULL,
  `unid_med_materia_prima` varchar(2) NOT NULL,
  `qtde_atual_materia_prima` double(10,3) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `criado_em_materia_prima` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_materia_prima` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_materia_prima`
--

INSERT INTO `tbl_materia_prima` (`id_materia_prima`, `nome_materia_prima`, `unid_med_materia_prima`, `qtde_atual_materia_prima`, `id_fornecedor`, `criado_em_materia_prima`, `atualizado_em_materia_prima`) VALUES
(1, 'Farinha de Trigo', 'KG', 25.000, 1, '2026-03-13 08:28:26', '2026-03-13 08:28:26'),
(2, 'Açucar Refinado', 'KG', 18.000, 1, '2026-03-13 08:30:35', '2026-03-13 08:30:35'),
(3, 'Chocolate em Barra', 'KG', 12.000, 5, '2026-03-13 08:31:04', '2026-03-13 08:31:04'),
(4, 'Leite Condensado', 'UN', 40.000, 2, '2026-03-13 08:32:05', '2026-03-13 08:32:05'),
(5, 'Creme de Leite', 'UN', 30.000, 2, '2026-03-13 08:32:32', '2026-03-13 08:32:32'),
(6, 'Morango', 'KG', 10.000, 4, '2026-03-13 08:33:24', '2026-03-13 08:33:24'),
(7, 'Ovos', 'UN', 120.000, 1, '2026-03-13 08:33:58', '2026-03-13 08:33:58'),
(8, 'Café em Pó', 'KG', 8.000, 1, '2026-03-13 08:34:38', '2026-03-13 08:34:38'),
(9, 'Caixas para Doces', 'UN', 60.000, 3, '2026-03-13 08:35:19', '2026-03-13 08:35:19'),
(10, 'Manteiga', 'KG', 9.000, 2, '2026-03-13 08:35:54', '2026-03-13 08:35:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_produtos`
--

CREATE TABLE `tbl_produtos` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(30) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `descricao_produto` text NOT NULL,
  `tamanho_produto` varchar(10) NOT NULL,
  `unid_med_produto` varchar(2) NOT NULL,
  `valor_produto` double(10,2) NOT NULL,
  `foto_produto` varchar(60) NOT NULL,
  `status_produto` varchar(10) NOT NULL DEFAULT 'ATIVO',
  `criado_em_produto` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_produto` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_produtos`
--

INSERT INTO `tbl_produtos` (`id_produto`, `nome_produto`, `id_categoria`, `descricao_produto`, `tamanho_produto`, `unid_med_produto`, `valor_produto`, `foto_produto`, `status_produto`, `criado_em_produto`, `atualizado_em_produto`) VALUES
(1, 'Brigadeiro Gourmet (6un)', 2, '6 Brigadeiros Sortidos', 'Médio', 'CX', 18.00, 'produto/brigadeiro-gourmet-(6un)', 'ATIVO', '2026-03-10 08:51:21', '2026-03-10 09:05:22'),
(2, 'Bolo de Cenoura (Fatia)', 1, 'Fatia com cobertura de chocolate belga', 'Pequeno', 'FT', 23.00, 'produto/bolo-de-cenoura(fatia)', 'ATIVO', '2026-03-10 09:14:56', '2026-03-10 09:14:56'),
(3, 'Capuccino 300ml', 3, 'Capuccino cremoso', 'Grande', 'ML', 13.75, 'produto/capuccino-300ml', 'ATIVO', '2026-03-10 09:23:59', '2026-03-10 09:23:59'),
(4, 'Bolo de Chocolate Fatia', 1, 'Fatia de bolo de chocolate com cobertura', 'Médio', 'FT', 12.50, 'produto/bolo-de-chocolate-fatia.png', 'ATIVO', '2026-03-12 11:30:50', '2026-03-12 11:30:50'),
(5, 'Bolo Red Velvet (Fatia)', 1, 'Fatia de bolo red velvet com cream cheese', 'Grande', 'FT', 14.00, 'produto/bolo-red-velvet-fatia.png', 'ATIVO', '2026-03-12 11:33:19', '2026-03-12 11:33:19'),
(6, 'Beijinho Gourmet', 2, 'Beijinho gourmet tradicional', 'Pequeno', 'UN', 3.50, 'produto/beijinho-gourmet.png', 'ATIVO', '2026-03-12 11:37:28', '2026-03-12 11:37:28'),
(7, 'Caixa com 6 Doces Finos', 2, 'Caixa com 6 doces finos variados', 'Médio', 'CX', 19.90, 'produto/caixa-com-6-doces-finos.png', 'ATIVO', '2026-03-12 11:39:03', '2026-03-12 11:39:03'),
(8, 'Torta de Limão (Fatia)', 4, 'Fatia de torta de limão', 'Pequeno', 'FT', 13.00, 'produto/torta-de-limao-fatia.png', 'ATIVO', '2026-03-12 11:40:33', '2026-03-12 11:40:33'),
(9, 'Cheesecake de Frutas Vermelhas', 4, 'Pedaço de cheesecake com frutas vermelhas', 'Grande', 'UN', 15.50, 'produto/cheesecake-de-frutas-vermelhas.png', 'ATIVO', '2026-03-12 11:42:13', '2026-03-12 11:42:13'),
(10, 'Café Expresso 80ml', 3, 'Café expresso tradicional', 'Pequeno', 'ML', 6.00, 'produto/cafe-expresso.png', 'ATIVO', '2026-03-12 11:43:53', '2026-03-12 11:43:53'),
(11, 'Capuccino 600ml', 3, 'Capuccino cremoso servido quente', 'Grande', 'ML', 10.50, 'produto/capuccino-cremoso.png', 'ATIVO', '2026-03-12 11:45:43', '2026-03-12 11:45:43'),
(12, 'Kit Presente Doce', 5, 'Kit com mini bolo e doces especiais', 'Grande', 'UN', 49.90, 'produto/kit-presente-doce.png', 'INATIVO', '2026-03-12 11:47:41', '2026-03-12 11:47:41'),
(13, 'Bolo de Cenoura Mini', 1, 'Mini bolo de cenoura com cobertura de chocolate', 'Pequeno', 'UN', 18.00, 'produto/mini-bolo-de-cenoura.png', 'ATIVO', '2026-03-12 11:49:03', '2026-03-12 11:49:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `email_usuario` varchar(80) NOT NULL,
  `senha_usuario` varchar(255) NOT NULL,
  `perfil_usuario` varchar(13) NOT NULL,
  `foto_usuario` varchar(30) NOT NULL,
  `status_usuario` varchar(10) NOT NULL,
  `criado_em_usuario` datetime NOT NULL DEFAULT current_timestamp(),
  `atualizado_em_usuario` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `perfil_usuario`, `foto_usuario`, `status_usuario`, `criado_em_usuario`, `atualizado_em_usuario`) VALUES
(1, 'Roberto Souza', 'roberto.atend@davilla.com.br', 'senha123', 'ATENDENTE', 'usuario/roberto-souza.png', 'ATIVO', '2026-03-10 10:00:03', '2026-03-10 10:00:03'),
(2, 'Ana Caixa', 'ana.atend@davilla.com', '123456', 'ATENDENTE', 'usuario/ana-caixa.jpg', 'ATIVO', '2026-03-12 11:01:39', '2026-03-12 11:01:39'),
(3, 'Beatriz Vendas', 'beatriz.atend@davilla.com', '123456', 'ATENDENTE', 'usuario/beatriz-vendas.jpg', 'ATIVO', '2026-03-12 11:03:17', '2026-03-12 11:03:17'),
(4, 'Carlos Gerente', 'carlos.geren@davilla.com', '123456', 'GERENTE', 'usuario/carlos-gerente.jpg', 'ATIVO', '2026-03-12 11:04:31', '2026-03-12 11:04:31'),
(5, 'Daniela Admin', 'daniela.admin@davilla.com', '123456', 'ADMIN', 'usuario/daniela-admin.jpg', 'ATIVO', '2026-03-12 11:05:21', '2026-03-12 11:05:21'),
(6, 'Eduardo Produção', 'eduardo.confe@davilla.com', '123456', 'CONFEITEIRO', 'usuario/eduardo-producao.jpg', 'INATIVO', '2026-03-12 11:06:44', '2026-03-12 11:08:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_vendas`
--

CREATE TABLE `tbl_vendas` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `data_venda` datetime NOT NULL DEFAULT current_timestamp(),
  `valor_venda` double(10,2) NOT NULL,
  `status_venda` varchar(12) NOT NULL,
  `data_entrega_venda` datetime NOT NULL,
  `atualizdo_em_venda` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_vendas`
--

INSERT INTO `tbl_vendas` (`id_venda`, `id_cliente`, `id_usuario`, `data_venda`, `valor_venda`, `status_venda`, `data_entrega_venda`, `atualizdo_em_venda`) VALUES
(1, 1, 1, '2026-03-10 10:43:24', 77.75, 'FINALIZADA', '2026-03-10 00:00:00', '2026-03-13 09:34:02'),
(2, 1, 2, '2026-03-13 08:46:05', 12.50, 'FINALIZADA', '2026-03-05 15:30:00', '2026-03-13 08:46:05'),
(3, 2, 2, '2026-03-13 08:46:56', 60.40, 'FINALIZADA', '2026-03-05 16:00:00', '2026-03-13 10:39:01'),
(4, 3, 1, '2026-03-13 08:47:55', 23.50, 'EM ANDAMENTO', '2026-03-06 10:00:00', '2026-03-13 08:47:55'),
(5, 4, 3, '2026-03-13 08:49:09', 61.40, 'FINALIZADA', '2026-03-06 18:30:00', '2026-03-13 10:44:20'),
(6, 5, 2, '2026-03-13 08:50:12', 26.00, 'FINALIZADA', '2026-03-07 14:00:00', '2026-03-13 08:50:12'),
(7, 6, 1, '2026-03-13 08:51:05', 0.00, 'CANCELADA', '2026-03-07 16:20:00', '2026-03-13 08:51:05'),
(8, 7, 4, '2026-03-13 08:52:02', 31.50, 'FINALIZADA', '2026-03-08 11:00:00', '2026-03-13 08:52:02'),
(9, 8, 2, '2026-03-13 08:52:46', 0.00, 'EM ANDAMENTO', '2026-03-08 17:00:00', '2026-03-13 08:52:46');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices de tabela `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cpf_cnpj_cliente` (`cpf_cnpj_cliente`),
  ADD UNIQUE KEY `email_cliente` (`email_cliente`);

--
-- Índices de tabela `tbl_contato`
--
ALTER TABLE `tbl_contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices de tabela `tbl_controle_materia_prima`
--
ALTER TABLE `tbl_controle_materia_prima`
  ADD PRIMARY KEY (`id_controle`),
  ADD KEY `fk_controle_materia_prima_materia_prima` (`id_materia_prima`);

--
-- Índices de tabela `tbl_fornecedores`
--
ALTER TABLE `tbl_fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD UNIQUE KEY `telefone_fornecedor` (`telefone_fornecedor`);

--
-- Índices de tabela `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `fk_itens_venda_venda` (`id_venda`),
  ADD KEY `fk_itens_venda_produto` (`id_produto`);

--
-- Índices de tabela `tbl_materia_prima`
--
ALTER TABLE `tbl_materia_prima`
  ADD PRIMARY KEY (`id_materia_prima`),
  ADD KEY `fk_materia_prima_fornecedor` (`id_fornecedor`);

--
-- Índices de tabela `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_produto_categoria` (`id_categoria`);

--
-- Índices de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email_usuario` (`email_usuario`);

--
-- Índices de tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_venda_cliente` (`id_cliente`),
  ADD KEY `fk_venda_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tbl_contato`
--
ALTER TABLE `tbl_contato`
  MODIFY `id_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tbl_controle_materia_prima`
--
ALTER TABLE `tbl_controle_materia_prima`
  MODIFY `id_controle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tbl_fornecedores`
--
ALTER TABLE `tbl_fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tbl_materia_prima`
--
ALTER TABLE `tbl_materia_prima`
  MODIFY `id_materia_prima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbl_controle_materia_prima`
--
ALTER TABLE `tbl_controle_materia_prima`
  ADD CONSTRAINT `fk_controle_materia_prima_materia_prima` FOREIGN KEY (`id_materia_prima`) REFERENCES `tbl_materia_prima` (`id_materia_prima`);

--
-- Restrições para tabelas `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  ADD CONSTRAINT `fk_itens_venda_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produtos` (`id_produto`),
  ADD CONSTRAINT `fk_itens_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_vendas` (`id_venda`);

--
-- Restrições para tabelas `tbl_materia_prima`
--
ALTER TABLE `tbl_materia_prima`
  ADD CONSTRAINT `fk_materia_prima_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `tbl_fornecedores` (`id_fornecedor`);

--
-- Restrições para tabelas `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  ADD CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categorias` (`id_categoria`);

--
-- Restrições para tabelas `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_venda_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
